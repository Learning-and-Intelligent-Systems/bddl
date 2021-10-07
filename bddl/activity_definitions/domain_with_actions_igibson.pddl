(define (domain igibson-actions)
    (:requirements :strips :adl :typing)

    (:types 
        agent.n.01 water.n.06 newspaper.n.03 towel.n.01 light.n.02 cup.n.01 bag.n.04 bag.n.06 bag.n.01 box.n.01 case.n.19 case.n.05 door.n.01 
        container.n.01 fabric.n.01 soap.n.01 bottle.n.01 dish.n.01 glass.n.02 table.n.02 sheet.n.03 cleansing_agent.n.01 bowl.n.01 
        brush.n.02 vegetable_oil.n.01 atomizer.n.01 window.n.01 tape.n.01 vinegar.n.01 handle.n.01 rag.n.01 apparel.n.01 lid.n.02 
        knife.n.01 detergent.n.02 laundry.n.01 car.n.01 pop.n.02 vacuum.n.04 clothing.n.01 plate.n.04 salt.n.02 tablespoon.n.02 
        pad.n.01 pad.n.04 coat.n.01 sink.n.01 furniture.n.01 rack.n.01 screw.n.02 bubble.n.01 shoe.n.01 bucket.n.01 juice.n.01 wire.n.02 
        pencil.n.01 push_button.n.01 shelf.n.01 screwdriver.n.01 nail.n.02 board.n.03 lemon.n.01 paint.n.01 fan.n.01 package.n.02 frame.n.10 
        hose.n.03 cotton.n.04 wrapping.n.01 buffet.n.01 pot.n.01 refrigerator.n.01 book.n.02 drawer.n.01 ball.n.01 ice.n.02 foil.n.01 pan.n.01 
        toothbrush.n.01 sock.n.01 date.n.08 lint.n.02 powder.n.03 trouser.n.01 cream.n.02 drain.n.03 string.n.01 cap.n.02 hook.n.04 hook.n.05 
        coffee.n.01 sleeve.n.01 stick.n.01 vegetable.n.01 tea.n.01 basket.n.01 shirt.n.01 bed.n.01 block.n.01 oven.n.01 teaspoon.n.02 rock.n.01 
        nut.n.03 tray.n.01 band.n.07 pen.n.01 fire.n.04 washer.n.03 spread.n.05 stove.n.01 spoon.n.01 bathtub.n.01 cube.n.05 clip.n.03 wool.n.01 
        jersey.n.03 blanket.n.01 garbage.n.03 wheel.n.01 kit.n.02 nozzle.n.01 bath.n.01 pack.n.03 packaging.n.03 blade.n.09 electric_refrigerator.n.01 
        iron.n.04 can.n.01 net.n.06 spring.n.02 rug.n.01 foam.n.01 butter.n.01 bristle.n.01 dishwasher.n.01 orange.n.01 citrus.n.01 egg.n.02 milk.n.01 
        meat.n.01 wine.n.01 dryer.n.01 seal.n.08 hanger.n.02 grain.n.01 chair.n.01 apple.n.01 shade.n.03 cord.n.04 cord.n.01 sauce.n.01 plug.n.01 
        plaything.n.01 sugar.n.01 wardrobe.n.01 microwave.n.02 acid.n.02 pin.n.09 fork.n.01 pillow.n.01 greens.n.01 holder.n.01 mask.n.04 vehicle.n.01 
        photograph.n.01 panel.n.01 alcohol.n.01 mold.n.06 lining.n.01 tube.n.01 card.n.01 marker.n.03 seat.n.03 underwear.n.01 dress.n.01
        deep freeze.n.01 necktie.n.01 jacket.n.01 wall_socket.n.01 washcloth.n.01 shower.n.01 tank.n.02 switch.n.01 coating.n.01 mat.n.01 mat.n.07 
        toilet.n.02 candy.n.01 crumb.n.03 picture.n.01 jar.n.01 telephone.n.01 sweater.n.01 faucet.n.01 skirt.n.02 cheese.n.01 bread.n.01 pasta.n.02 
        file.n.03 roller.n.04 vent.n.01 curtain.n.01 filter.n.01 drill.n.01 brim.n.01 ribbon.n.01 linen.n.01 jean.n.01 broom.n.01 bin.n.01 bolt.n.06 
        scissors.n.01 silk.n.01 countertop.n.01 tile.n.01 spatula.n.01 spatula.n.02 salad.n.01 chocolate.n.02 jewelry.n.01 backpack.n.01 mallet.n.03 mallet.n.02 
        boot.n.01 strap.n.01 eraser.n.01 cable.n.02 olive.n.04 timer.n.01 cutter.n.06 knob.n.01 eatage.n.01 hat.n.01 rod.n.01 swab.n.02 swab.n.01 computer.n.01 
        scum.n.02 pool.n.06 pool.n.01 burner.n.01 burner.n.02 candle.n.01 baseboard.n.01 ventilation.n.02 disinfectant.n.01 scrub_brush.n.01 stool.n.01 gelatin.n.02 
        gelatin.n.03 formula.n.06 lock.n.01 staple.n.04 cake.n.03 garment.n.01 thermometer.n.01 shampoo.n.01 fish.n.02 battery.n.02 cupboard.n.01 chip.n.04 mirror.n.01 
        stand.n.04 conditioner.n.03 cookie.n.01 berry.n.01 glove.n.02 screen.n.01 kettle.n.01 toothpaste.n.01 toiletry.n.01 sandwich.n.01 carrot.n.03 rule.n.12 
        honey.n.01 dishrag.n.01 disposal.n.04 rice.n.01 peanut.n.04 land.n.02 dial.n.01 knot.n.02 tire.n.01 socket.n.02 porcelain.n.01 onion.n.03 scraper.n.01 
        thread.n.01 belt.n.02 desk.n.01 pipe.n.02 bell.n.01 pill.n.02 pill.n.01 dustcloth.n.01 magazine.n.02 needle.n.03 grill.n.02 pole.n.01 bead.n.01 rail.n.04 
        collar.n.01 banana.n.02 cherry.n.03 scoop.n.06 fastener.n.02 skewer.n.01 trap.n.02 light_bulb.n.01 saucepan.n.01 lace.n.01 bean.n.01 chest_of_drawers.n.01 
        chicken.n.01 soup.n.01 pump.n.01 razor.n.01 ladder.n.01 popcorn.n.02 peach.n.03 straw.n.04 spice.n.02 grate.n.01 television_receiver.n.01 slide_fastener.n.01 
        lotion.n.02 lotion.n.01 gauge.n.01 syrup.n.01 circuit_breaker.n.01 lime.n.06 avocado.n.01 crayon.n.01 mint.n.05 bookshelf.n.01 bedclothes.n.01 wiring.n.01 
        hinge.n.01 blush_wine.n.01 drawing.n.02 flour.n.01 anchor.n.01 strainer.n.01 vanilla.n.02 gym_shoe.n.01 bow.n.08 bracket.n.04 suit.n.01 baggage.n.01 heel.n.01 
        pajama.n.02 mug.n.04 wallboard.n.01 ceramic.n.01 funnel.n.02 cushion.n.03 lever.n.01 dustpan.n.02 tin.n.02 cinnamon.n.03 notch.n.03 sofa.n.01 slack.n.06 
        steamer.n.02 watch.n.01 dip.n.04 pear.n.01 packet.n.03 perfume.n.02 chest.n.02 basin.n.01 breast.n.03 corn.n.03 cider.n.01 parsley.n.02 pouch.n.01 chewing_gum.n.01 
        jug.n.01 tarpaulin.n.01 quilt.n.01 cutlery.n.02 decoration.n.01 lettuce.n.03 deodorant.n.01 pepper.n.03 wrench.n.03 lamp.n.02 whisk.n.01 spinach.n.02 coil.n.01 
        mayonnaise.n.01 potato.n.01 truck.n.01 golf_club.n.02 folder.n.02 enamel.n.04 coconut.n.01 notebook.n.01 tomato.n.01 broccoli.n.02 mattress.n.01 binder.n.03 
        blender.n.01 painting.n.01 brick.n.01 beef.n.02 rope.n.01 raspberry.n.02 crust.n.02 step_ladder.n.01 laminate.n.01 frying_pan.n.01 throw.n.04 yogurt.n.01 
        bookcase.n.01 comb.n.01 blower.n.01 undergarment.n.01 casserole.n.02 radio_receiver.n.01 document.n.01 blockage.n.02 legging.n.01 dressing.n.01 cocoa.n.02 
        wreath.n.01 garlic.n.02 scantling.n.01 cranberry.n.02 printer.n.03 shell.n.05 ginger.n.02 sunglass.n.01 plunger.n.03 cucumber.n.02 mustard.n.02 pineapple.n.02 cracker.n.01 
        toothpick.n.01 chili.n.02 chili.n.01 paintbrush.n.01 blind.n.03 soapsuds.n.01 napkin.n.01 float.n.05 flashlight.n.01 jack.n.10 marble.n.02 pie.n.01 compact_disk.n.01 
        stew.n.02 applicator.n.01 muffin.n.01 mill.n.04 flight.n.03 grape.n.01 drive.n.10 gravy.n.01 pork.n.01 cauliflower.n.02 heater.n.01 umbrella.n.01 hairbrush.n.01 alarm.n.02 
        journal.n.04 backing.n.02 dishtowel.n.01 beer.n.01 disk.n.02 chopstick.n.01 tablecloth.n.01 library.n.01 camera.n.01 jam.n.01 tuna.n.02 partition.n.01 caddy.n.01 carton.n.02 
        steak.n.01 plywood.n.01 peppermint.n.03 clove.n.03 celery.n.02 almond.n.02 step.n.04 squeegee.n.01 clothespin.n.01 brassiere.n.01 scarf.n.01 canvas.n.01 basil.n.03 
        toaster.n.02 plum.n.02 colander.n.01 girdle.n.02 frosting.n.01 charger.n.02 canister.n.02 pizza.n.01 turkey.n.04 planner.n.02 beater.n.02 blazer.n.01 pickle.n.01 
        windowsill.n.01 satin.n.01 mail.n.03 pedal.n.02 guard.n.03 tack.n.02 windshield.n.01 cocktail.n.01 catsup.n.01 laptop.n.01 necklace.n.01 fiber.n.05 clamp.n.01 barrel.n.02 
        latch.n.01 bedspread.n.01 pitcher.n.02 platter.n.01 crate.n.01 palette.n.02 lemonade.n.01 cereal.n.03 dispenser.n.01 nectarine.n.02 dental_floss.n.01 pretzel.n.01 bagel.n.01 
        covering.n.02 receptacle.n.01 lens.n.01 trowel.n.01 clock.n.01 stocking.n.01 chalk.n.04 blouse.n.01 bean_curd.n.01 soy_sauce.n.01 earphone.n.01 dough.n.01 strawberry.n.01 
        wicker.n.02 prawn.n.01 personal_computer.n.01 peg.n.01 egg_yolk.n.01 noodle.n.01 fireplace.n.01 sandal.n.01 swimsuit.n.01 hamper.n.02 peeler.n.03 gasket.n.01 bird_feeder.n.01 
        clothesline.n.01 wheat.n.02 plush.n.01 bandage.n.01 brine.n.02 papaya.n.02 apricot.n.02 highlighter.n.02 foliation.n.03 lipstick.n.01 blueberry.n.02 salsa.n.01 sill.n.01 
        globe.n.03 paprika.n.02 tart.n.03 khaki.n.01 ointment.n.01 bacon.n.01 sunscreen.n.01 carryall.n.01 turnbuckle.n.01 bicycle.n.01 pumpkin.n.02 salmon.n.03 earring.n.01 
        pantyhose.n.01 railing.n.01 calculator.n.02 vase.n.01 headboard.n.01 granule.n.01 sequin.n.01 shovel.n.01 punch.n.02 nylon.n.02 rayon.n.01 baseball.n.02 sketch.n.01 
        stapler.n.01 deck.n.01 cupcake.n.01 keyboard.n.01 mitten.n.01 burlap.n.01 uniform.n.01 zucchini.n.02 rosemary.n.02 raisin.n.01 watermelon.n.02 kosher.n.01 saw.n.02 
        fur.n.03 batter.n.02 mixer.n.04 fuse.n.01 suede_cloth.n.01 duffel_bag.n.01 tinsel.n.02 dolly.n.02 scanner.n.02 cellophane.n.01 sweetening.n.01 pita.n.01 chickpea.n.03 
        dill.n.02 velcro.n.01 clog.n.02 drum_sander.n.01 flat_coat.n.01 hummus.n.01 router.n.02 dressing_table.n.01 tripod.n.01 marshmallow.n.01 fillet.n.02 parmesan.n.01 
        kale.n.03 cheddar.n.02 cone.n.01 respirator.n.01 gauze.n.02 gauze.n.01 runner.n.09 granola.n.01 margarine.n.01 mantel.n.01 pendulum.n.01 drawstring.n.01 pulp.n.01 
        pegboard.n.01 barley.n.01 compressor.n.01 caramel.n.02 french_dressing.n.01 padding.n.01 videodisk.n.01 tortilla.n.01 nutcracker.n.01 caliper.n.01 doorknob.n.01 ham.n.01 
        wallet.n.01 pea.n.01 tartan.n.01 diaper.n.01 mouse.n.04 mango.n.02 sack.n.01 crank.n.04 rum.n.01 crock.n.03 cooler.n.01 drum.n.04 watchband.n.01 cheesecloth.n.01 beam.n.02 
        firewall.n.03 sieve.n.01 detector.n.01 cart.n.01 hoop.n.02 jigsaw.n.02 hamburger.n.01 yardstick.n.02 upholstery.n.01 cashmere.n.01 lego.n.01 puree.n.01 chutney.n.01 
        terry.n.02 tumbler.n.02 rake.n.03 trophy.n.02 stamp.n.08 opener.n.03 pincer.n.01 thumbtack.n.01 applesauce.n.01 monitor.n.04 nipple.n.02 boiler.n.01 glaze.n.01 shellac.n.02 
        varnish.n.01 spine.n.04 slat.n.01 jaw.n.03 football.n.02 headband.n.01 walnut.n.01 asparagus.n.02 flannel.n.01 ice_lolly.n.01 knickknack.n.01 paper_clip.n.01 sprout.n.02 
        lasagna.n.01 melon.n.01 nightgown.n.01 novel.n.02 frill.n.03 shoebox.n.02 liquid_crystal_display.n.01 magnet.n.01 remote_control.n.01 fleece.n.03 raincoat.n.01 slipper.n.01 
        tenderloin.n.02 robe.n.01 bench.n.01 insole.n.01 brew.n.01 axle.n.01 teacup.n.02 espresso.n.01 marjoram.n.02 beet.n.02 macaroni.n.02 topper.n.05 saucer.n.02 portrait.n.02 
        cabbage.n.01 sweatshirt.n.01 background.n.07 mozzarella.n.01 tampon.n.01 facsimile.n.02 shoelace.n.01 hubcap.n.01 hay.n.01 windshield_wiper.n.01 stake.n.05 muslin.n.01 
        fountain.n.03 lamb.n.05 ratchet.n.01 antenna.n.01 cornmeal.n.01 ramp.n.01 snake.n.05 carafe.n.01 shaver.n.03 pane.n.01 piano.n.01 doll.n.01 cos.n.02 ranch.n.01 freshener.n.01 
        aerosol.n.02 adapter.n.02 beading.n.01 embroidery.n.02 caper.n.02 thyme.n.02 coriander.n.03 radish.n.01 oat.n.02 hub.n.01 chop.n.02 apron.n.01 liquor.n.01 briefcase.n.01 
        cobweb.n.03 cleaver.n.01 envelope.n.01 coca_cola.n.01 cringle.n.01 sorter.n.02 mural.n.01 biscuit.n.01 thermostat.n.01 cornice.n.01 lingerie.n.01 blackberry.n.01 
        toggle_switch.n.01 slate.n.01 shim.n.01 carpet_pad.n.01 sawhorse.n.01 straightener.n.01 gown.n.05 griddle.n.01 shaker.n.03 shield.n.01
        light emitting_diode.n.01 sash.n.01 footboard.n.02 confetti.n.01 sirloin.n.01 relish.n.02 coaster.n.03 seltzer.n.01 buttermilk.n.01 ski.n.01 doorjamb.n.01 plumbing.n.01 
        eiderdown.n.01 lampshade.n.01 guitar.n.01 computer_keyboard.n.01 denture.n.01 loaf_of_bread.n.01 lentil.n.01 cinder.n.01 bookend.n.01 cantaloup.n.02 paperback_book.n.01 
        floorboard.n.02 scotch.n.02 clasp.n.01 curry.n.01 cognac.n.01 carpet_sweeper.n.01 ladle.n.01 sausage.n.01 crowbar.n.01 webbing.n.03 pudding.n.03 stereo.n.01 armoire.n.01 
        meatball.n.01 sushi.n.01 cologne.n.02 baguet.n.01 fennel.n.02 allspice.n.03 squash.n.02 corkscrew.n.01 gingham.n.01 scrapbook.n.01 jewel.n.01 bangle.n.02 cradle.n.01 
        doormat.n.02 tabbouleh.n.01 oatmeal.n.01 ravioli.n.01 cornbread.n.01 fig.n.04 fence.n.01 eyeliner.n.01 bikini.n.02 collage.n.01 jamb.n.01 piston.n.02 ashcan.n.01 cigarette.n.01 
        hygrometer.n.01 broth.n.01 mousse.n.01 reamer.n.01 chisel.n.01 lanolin.n.02 balloon.n.02 firework.n.01 purifier.n.01 marinara.n.01 mushroom.n.05 bannister.n.02 pancake.n.01 
        canola_oil.n.01 teapot.n.01 anchovy.n.01 pond.n.01 stockpot.n.01 probe.n.02 masher.n.02 nutmeg.n.02 dart.n.01 hedge.n.01 dartboard.n.01 motorcycle.n.01 tequila.n.01 vodka.n.01 
        frisbee.n.01 farfalle.n.01 worktable.n.01 sifter.n.01 turmeric.n.02 horseradish.n.03 radicchio.n.01 worcester_sauce.n.01 minibike.n.01 handlebar.n.01 oxford.n.04 cashew.n.02 
        shallot.n.03 smoothie.n.02 sharpener.n.01 album.n.02 hood.n.09 oolong.n.01 fudge.n.01 modem.n.01 bidet.n.01 furnace.n.01 crouton.n.01 cotter.n.03 accelerator.n.01 accelerator.n.02 
        capacitor.n.01 siren.n.04 recreational_vehicle.n.01 lighter.n.02 crossbar.n.01 teddy.n.01 mousetrap.n.01 brownie.n.03 mocha.n.03 sculpture.n.01 putter.n.02 kabob.n.01 
        faceplate.n.01 grapefruit.n.02 duplicator.n.01 undercarriage.n.01 chock.n.01 coloring.n.01 gumdrop.n.01 hardback.n.01 stopcock.n.01 fire_extinguisher.n.01 pomegranate.n.02 
        resistor.n.01 cheesecake.n.01 demitasse.n.02 jump_suit.n.01 penne.n.01 sail.n.03 trailer_truck.n.01 sprocket.n.01 pulley.n.01 semigloss.n.01 dander.n.01 dampener.n.01 
        firebox.n.01 tabasco.n.02 tulle.n.01 tent.n.01 voltmeter.n.01 clamshell.n.02 wastepaper_basket.n.01 tidy.n.01 decaffeinated_coffee.n.01 frappe.n.01 cream_pitcher.n.01 
        percolator.n.01 monocle.n.01 bale.n.01 grater.n.01 cayenne.n.03 power_shovel.n.01 potpourri.n.03 snowball.n.04 burrito.n.01 flatbed.n.02 speedometer.n.01 odometer.n.01 
        shear.n.02 trimmer.n.02 sauerkraut.n.01 bobbin.n.01 earplug.n.01 repeater.n.04 stout.n.01 whiskey.n.01 liqueur.n.01 sweatband.n.02 tahini.n.01 chassis.n.02 goblet.n.01 
        gazpacho.n.01 brie.n.01 plumber s_snake.n.01 webcam.n.01 mascara.n.01 eyeshadow.n.01 licorice.n.02 comfrey.n.02 alfalfa.n.02 shortening.n.01 groundsheet.n.01 bedpost.n.01 
        easel.n.01 dinner_jacket.n.01 dipper.n.01 stopwatch.n.01 roaster.n.04 aspartame.n.01 spindle.n.02 greatcoat.n.01 blackboard.n.01 softball.n.01 martini.n.01 doily.n.01 
        basketball.n.02 tiara.n.01 comforter.n.04 bib.n.02 puppet.n.03 gingerbread.n.01 lollipop.n.02 hazelnut.n.02 blanc.n.01 chicory_escarole.n.01 gorgonzola.n.01 green_onion.n.01 
        cumin.n.02 mostaccioli.n.01 pepperoni.n.01 salami.n.01 carabiner.n.01 outsole.n.01 awl.n.01 pebble.n.01 brocade.n.01 gourd.n.01 cassette.n.01 sled.n.01 meat_loaf.n.01 
        taco.n.02 waffle.n.01 kiwi.n.03 artichoke.n.02 blinker.n.01 shrapnel.n.01 venison.n.01 generator.n.04 diskette.n.01 gumbo.n.03 eggplant.n.01 honeydew.n.01 protractor.n.01 
        helmet.n.01 skateboard.n.01 water_scooter.n.01 cellular_telephone.n.01 braid.n.02 lath.n.01 inflater.n.01 potholder.n.01 paperweight.n.01 van.n.05 earmuff.n.01 bust.n.03 
        ember.n.01 hacksaw.n.01 dowel.n.01 windowpane.n.01 julienne.n.01 buffer.n.05 lacquer.n.02 curacao.n.02 stirrer.n.02 mussel.n.01 clam.n.03 cardigan.n.01 stiletto.n.01 sunhat.n.01 
        diary.n.02 treadmill.n.01 loafer.n.02 toner.n.03 ipod.n.01 barbell.n.01 cardamom.n.02 conserve.n.01 toast.n.01 intake.n.02 fluorescent.n.01 chenille.n.02 prosciutto.n.01 
        coleslaw.n.01 puff.n.02 nacho.n.01 guacamole.n.01 sangaree.n.01 footstool.n.01 carriage.n.04 baby_buggy.n.01 cheeseboard.n.01 thimble.n.02 inverter.n.01 choke.n.01 filament.n.04 
        bisque.n.01 lobster.n.01 breadcrumb.n.01 crab.n.05 veal.n.01 cutlet.n.01 medallion.n.02 gouda.n.01 brandy.n.01 selsyn.n.01 capsule.n.02 talcum.n.02 vest.n.01 manifold.n.01 
        camcorder.n.01 microphone.n.01 headlight.n.01 dumbbell.n.01 buckle.n.01 doorframe.n.01 stairwell.n.01 joist.n.01 breathing_device.n.01 mothball.n.01 clipboard.n.01 pomade.n.01 
        scone.n.01 pestle.n.03 crusher.n.01 wafer.n.02 caster.n.02 crochet.n.01 toolbox.n.01 caldron.n.01 loudspeaker.n.01 armchair.n.01 cabinet.n.01 chaise_longue.n.01 coffee_maker.n.01 
        coffee_table.n.01 console_table.n.01 crib.n.01 dining_table.n.01 floor_lamp.n.01 table_lamp.n.01 gaming_table.n.01 grandfather_clock.n.01 highchair.n.01 pedestal_table.n.01 
        pool_table.n.01 pot_plant.n.01 rail_fence.n.01 range_hood.n.01 rocking_chair.n.01 straight_chair.n.01 swivel_chair.n.01 towel_rack.n.01 wall_clock.n.01 bell_pepper.n.02 
        lyonnaise_sauce.n.01 bulldog_clip.n.01 bulletin_board.n.02 canned_food.n.01 carving_knife.n.01 cheese_dip.n.01 chestnut.n.03 chives.n.01 chopping_board.n.01 coatrack.n.01 
        corn_flake.n.01 cruet.n.01 scale.n.07 dinner_napkin.n.01 dish_rack.n.01 foot_rule.n.01 pistachio.n.02 pomelo.n.02 vidalia_onion.n.01 head_cabbage.n.02 steel.n.03
        low fat_milk.n.01 millet.n.03 olive_oil.n.01 paper_towel.n.01 parer.n.02 pencil_box.n.01 pepper_grinder.n.01 pepper_sauce.n.01 powdered_milk.n.01 puffed_rice.n.01 raisin_bran.n.01 
        hip.n.05 soup_ladle.n.01 spaghetti.n.01 spaghetti_sauce.n.01 straight_pin.n.01 sweet_corn.n.02 table_knife.n.01 tablefork.n.01 toasting_fork.n.01 tongs.n.01 turnip.n.02 velveeta.n.01 
        display_panel.n.01 wine_bottle.n.01 computer_game.n.01 board_game.n.01 walker.n.04 medicine.n.02 protein.n.01 ink_cartridge.n.01 cpu_board.n.01 headset.n.01 disk_drive.n.01 
        hammer.n.02 bath_towel.n.01 hand_towel.n.01 candy_cane.n.01 folderal.n.01 clout_nail.n.01 pocketknife.n.01 bracelet.n.02 ring.n.08 christmas_tree.n.05 polish.n.03 fruit.n.01 
        rib.n.03 brisket.n.01 curd.n.02 racket.n.04 champagne.n.01 cage.n.01 trout.n.01 shank.n.01 lantern.n.01 rivet.n.02 barbecue.n.01 rump.n.02 flank.n.03 broiler.n.01 currant.n.03 
        credenza.n.01 candlestick.n.01 cloche.n.01 bradawl.n.01 skeleton.n.04 gravestone.n.01 nan.n.04 teriyaki.n.01 soy.n.04 mandarin.n.05 sconce.n.03 sharpie.n.03 horn.n.01 pallet.n.02 
        clipper.n.04 crutch.n.01 acetate_rayon.n.01 porterhouse.n.01 marinade.n.01 tinfoil.n.01 saute.n.01 feijoa.n.02 autoclave.n.01 whitefish.n.02 red_salmon.n.01 silver_salmon.n.01 
        chum.n.02 stoop.n.03 lumberjack.n.02 pruner.n.02 planter.n.03 handset.n.01 casement.n.01 thumbscrew.n.02 knitwear.n.01 broomstick.n.01 lawn_mower.n.01 doorstop.n.01 wax.n.01 
        drumstick.n.02 drumstick.n.01 gooseberry.n.01 floor.n.01 breakfast_table.n.01 pepper_mill.n.01 ice_cube.n.01 tart.n.02 folding_chair.n.01 wood.n.01 tea_bag.n.01 shoulder_bag.n.01
    )

    (:predicates 
        (inside ?obj1 ?obj2)
        (nextto ?obj1 ?obj2)
        (ontop ?obj1 ?obj2)
        (under ?obj1 ?obj2)
        (broken ?obj1)
        (burnt ?obj1)
        (cooked ?obj1)
        (dusty ?obj1)
        (frozen ?obj1)
        (open ?obj1)
        (perished ?obj1)
        (screwed ?obj1)
        (stained ?obj1)
        (sliced ?obj1)
        (soaked ?obj1)
        (timeset ?obj1)
        (toggled_on ?obj1)
        (inroom ?obj1 ?room1)
        (onfloor ?obj1 ?floor1)
        ; New Handwritten predicates (njk and wbm3)
        (holding ?obj1)
        (handsfull ?agent)
    )

    (:action navigate_to
        :parameters (?objto - object ?agent - agent.n.01)
        :precondition (not (nextto ?objto ?agent))
        :effect (and (nextto ?objto ?agent) 
                        (when 
                            (exists 
                                (?objfrom - object) 
                                (nextto ?objfrom ?agent)
                            )
                            (not (nextto ?objfrom ?agent))
                        ) 
                )
    )

    (:action grasp
        :parameters (?obj - object ?agent - agent.n.01)
        :precondition (and (not (holding ?obj))
                            (not (handsfull ?agent)) 
                            (nextto ?obj ?agent))
        :effect (and (holding ?obj) 
                        (handsfull ?agent))
    )
    
    (:action place_ontop ; place object 1 onto object 2
        :parameters (?obj2 - object ?agent - agent.n.01 ?obj1 - object)
        :precondition (and (holding ?obj1) 
                            (nextto ?obj2 ?agent))
        :effect (and (ontop ?obj1 ?obj2) 
                        (not (holding ?obj1)) 
                        (not (handsfull ?agent)))
    )

    (:action place_inside ; place object 1 inside object 2
        :parameters (?obj2 - object ?agent - agent.n.01 ?obj1 - object)
        :precondition (and (holding ?obj1) 
                            (nextto ?obj2 ?agent) 
                            (open ?obj2))
        :effect (and (inside ?obj1 ?obj2) 
                        (not (holding ?obj1)) 
                        (not (handsfull ?agent)))
    )
    
    (:action open
        :parameters (?obj - object ?agent - agent.n.01)
        :precondition (and (nextto ?obj ?agent) 
                            (not (open ?obj))
                            (not (handsfull ?agent)))
        :effect (open ?obj)
    )

    (:action close
        :parameters (?obj - object ?agent - agent.n.01)
        :precondition (and (nextto ?obj ?agent) 
                            (open ?obj)
                            (not (handsfull ?agent)))
        :effect (not (open ?obj))
    )
    
)
