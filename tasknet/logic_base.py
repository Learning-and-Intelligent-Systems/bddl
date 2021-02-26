from abc import abstractmethod, ABCMeta

from future.utils import with_metaclass

class Sentence(with_metaclass(ABCMeta)):
    def __init__(self, scope, task, body, object_map):
        self.children = []
        self.child_values = []
        self.task = task
        self.body = body
        self.scope = scope
        self.object_map = object_map

    @abstractmethod
    def evaluate(self):
        pass


class AtomicPredicate(Sentence):
    def __init__(self, scope, task, body, object_map):
        super().__init__(scope, task, body, object_map)


class BinaryAtomicPredicate(AtomicPredicate):
    def __init__(self, scope, task, body, object_map):
        super().__init__(scope, task, body, object_map)
        assert len(body) == 2, 'Param list should have 2 args'
        self.input1, self.input2 = [inp.strip('?') for inp in body]
        self.scope = scope

    @abstractmethod
    def _evaluate(self, obj1, obj2):
        pass

    def evaluate(self):
        if (self.scope[self.input1] is not None) and (self.scope[self.input2] is not None):
            return self._evaluate(self.scope[self.input1], self.scope[self.input2])
        else:
            print('%s and/or %s are not mapped to simulator objects in scope' %
                  (self.input1, self.input2))

    @abstractmethod
    def _sample(self, obj1, obj2, binary_state):
        pass

    def sample(self, binary_state):
        if (self.scope[self.input1] is not None) and (self.scope[self.input2] is not None):
            return self._sample(self.scope[self.input1], self.scope[self.input2], binary_state)
        else:
            print('%s and/or %s are not mapped to simulator objects in scope' %
                  (self.input1, self.input2))


class UnaryAtomicPredicate(AtomicPredicate):
    def __init__(self, scope, task, body, object_map):
        super().__init__(scope, task, body, object_map)
        assert len(body) == 1, 'Param list should have 1 arg'
        self.input = body[0].strip('?')
        self.scope = scope

    @abstractmethod
    def _evaluate(self, obj):
        pass

    def evaluate(self):
        if self.scope[self.input] is not None:
            return self._evaluate(self.scope[self.input])
        else:
            print('%s is not mapped to a simulator object in scope' % self.input)
            return False

    @abstractmethod
    def _sample(self, obj, binary_state):
        pass

    def sample(self, binary_state):
        if self.scope[self.input] is not None:
            return self._sample(self.scope[self.input], binary_state)
        else:
            print('%s is not mapped to a simulator object in scope' % self.input)
            return False