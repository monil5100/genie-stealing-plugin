TOP:
#debuglevel 5
##################################
#     Your Variables here        #
##################################
var STEALCONTAINER $StealingContainer
var LAST GO.PAWN.STUFF.CROSS

var hum $hum
var khri1 skulk
var khri2 
var khri3 
var khri4 
var HAVEN.PASSWORD toveustorto
var item.location
var steal.count 3

var CLANITEM YES
var CLAN.ITEM.NAME ferron

#################################################
#            STEALING  VARIABLES                #
#           NAMES MUST BE CORRECT!              #
#  i.e - third box on shelf, jade ring, etc     #
#################################################

#################################################
##                                     
##   To Start - We get Current Location
##   		and LocationIDs
##

var ROSSMAN.SLING $ROSSMAN.SLING
var ROSSMAN.HERB $ROSSMAN.HERB
var ROSSMAN.GENERAL $ROSSMAN.GENERAL
var ROSSMAN.FORGE $ROSSMAN.FORGE
var ROSSMAN.CLOTHING $ROSSMAN.CLOTHING

var HAVEN.HERB $HAVEN.HERB
var HAVEN.IRONWORKS $HAVEN.IRONWORKS
var HAVEN.NAPHTHA $HAVEN.NAPHTHA
var HAVEN.FLOWER $HAVEN.FLOWER
var HAVEN.ARMORY $HAVEN.ARMORY
var HAVEN.ARMS $HAVEN.ARMS
var HAVEN.GENERAL $HAVEN.GENERAL
var HAVEN.CLOTH $HAVEN.CLOTH
var HAVEN.ARTIFICER $HAVEN.ARTIFICER
var HAVEN.JOY $HAVEN.JOY
var HAVEN.SMOKE $HAVEN.SMOKE
var HAVEN.WEAPON $HAVEN.WEAPON
var HAVEN.BARD $HAVEN.BARD
var HAVEN.CLERIC $HAVEN.CLERIC

var ARTHE.PATTERN $ARTHE.PATTERN
var ARTHE.FASHION $ARTHE.FASHION
var ARTHE.ODDS $ARTHE.ODDS
var ARTHE.BALLAD $ARTHE.BALLAD

var XING.SCRIPT $XING.SCRIPT
var XING.CARD $XING.CARD
var XING.GENERAL $XING.GENERAL
var XING.WEAPON $XING.WEAPON
var XING.ARMOR $XING.ARMOR
var XING.MUSIC $XING.MUSIC
var XING.EMPATH $XING.EMPATH
var XING.EMPATH2 $XING.EMPATH2
var XING.EMPATH3 $XING.EMPATH3
var XING.CLERIC $XING.CLERIC
var XING.BATH $XING.BATH
var XING.HABER $XING.HABER 
var XING.ARTIF $XING.ARTIF 
var XING.TANNER $XING.TANNER
var XING.JEWELRY $XING.JEWELRY 
var XING.CLOTH $XING.CLOTH
var XING.SHOE $XING.SHOE
var XING.HERB $XING.HERB
var XING.ALCHEMY $XING.ALCH
var XING.FLOWER $XING.FLOWER

var LETH.SKIN $LETH.SKIN
var LETH.BOW $LETH.BOW
var LETH.ORIGAMI $LETH.ORIGAMI
var LETH.WEAPON $LETH.WEAPON
var LETH.WICKER $LETH.WICKER
var LETH.BARD $LETH.BARD
var LETH.CLOTHES $LETH.CLOTHES
var LETH.WOOD $LETH.WOOD
var LETH.GENERAL $LETH.GENERAL
var LETH.PERFUME $LETH.PERFUME

var ROSSMAN.SLING.LOCID 
var ROSSMAN.HERB.LOCID 
var ROSSMAN.GENERAL.LOCID 
var ROSSMAN.FORGE.LOCID 
var ROSSMAN.CLOTHING.LOCID 

var HAVEN.HERB.LOCID 
var HAVEN.IRONWORKS.LOCID 
var HAVEN.NAPHTHA.LOCID 
var HAVEN.FLOWER.LOCID 
var HAVEN.ARMORY.LOCID 
var HAVEN.ARMS.LOCID 
var HAVEN.GENERAL.LOCID 
var HAVEN.CLOTH.LOCID 
var HAVEN.ARTIFICER.LOCID  
var HAVEN.JOY.LOCID 
var HAVEN.SMOKE.LOCID 
var HAVEN.WEAPON.LOCID 
var HAVEN.BARD.LOCID 
var HAVEN.CLERIC.LOCID 

var ARTHE.PATTERN.LOCID 
var ARTHE.FASHION.LOCID 
var ARTHE.ODDS.LOCID 
var ARTHE.BALLAD.LOCID  

var XING.SCRIPT.LOCID 
var XING.CARD.LOCID 
var XING.GENERAL.LOCID  
var XING.WEAPON.LOCID 
var XING.ARMOR.LOCID 
var XING.MUSIC.LOCID 
var XING.EMPATH.LOCID 
var XING.EMPATH2.LOCID  
var XING.EMPATH3.LOCID  
var XING.CLERIC.LOCID 
var XING.BATH.LOCID 
var XING.HABER.LOCID 
var XING.ARTIF.LOCID 
var XING.TANNER.LOCID 
var XING.JEWELRY.LOCID  
var XING.CLOTH.LOCID 
var XING.SHOE.LOCID 
var XING.HERB.LOCID 
var XING.ALCHEMY.LOCID  
var XING.FLOWER.LOCID 

var LETH.SKIN.LOCID 
var LETH.BOW.LOCID 
var LETH.ORIGAMI.LOCID 
var LETH.WEAPON.LOCID 
var LETH.WICKER.LOCID 
var LETH.BARD.LOCID 
var LETH.CLOTHES.LOCID  
var LETH.WOOD.LOCID 
var LETH.GENERAL.LOCID  
var LETH.PERFUME.LOCID 


var ItemCount 0
var shopCount

# END USER VARIABLES
#########################################

#goto ACTION.INIT

###############################################
##
##   Begin of New Stealing Routine
##	Will Loop through Shops, with travel
##	done by AutoMapper, Will require 
##	upates if Maps change
##

var StealingLocations XING|ARTHE|HAVEN|LETH|ROSSMAN
var cityCount 
eval cityCount count("%StealingLocations", "|")

var CrossingItems %XING.SCRIPT |%XING.CARD |%XING.GENERAL |%XING.WEAPON |%XING.ARMOR |%XING.MUSIC |%XING.EMPATH |%XING.EMPATH2 |%XING.EMPATH3 |%XING.CLERIC |%XING.BATH |%XING.HABER |%XING.ARTIF |%XING.TANNER |%XING.JEWELRY |%XING.CLOTH |%XING.SHOE |%XING.HERB |%XING.ALCHEMY |%XING.FLOWER 
var CrossingShops XING.SCRIPT |XING.CARD |XING.GENERAL |XING.WEAPON |XING.ARMOR |XING.MUSIC |XING.EMPATH |XING.EMPATH2 |XING.EMPATH3 |XING.CLERIC |XING.BATH |XING.HABER |XING.ARTIF |XING.TANNER |XING.JEWELRY |XING.CLOTH |XING.SHOE |XING.HERB |XING.ALCHEMY |XING.FLOWER 
eval shopCount count("%CrossingShops", "|")

var LOCATION NONE
if $zoneid = 1 then var LOCATION CROSSING1
goto %LOCATION

CROSSING1:
if %ItemCount > 30 or $Stealing.LearningRAte > 24 then goto exitnow
if (%CrossingItems(%ItemCount) != "") then gosub TO.%CrossingShops(%ItemCount)
math ItemCount add 1
goto CROSSING1

exitnow:
exit


##  End of Testing Segment
################################################


#math Charges set 0
#math Binned set 0
#math Pawn set 0
var LAST MAINLOOP

ACTION.INIT:
action goto JAIL.CHECK when a sound not unlike that of a tomb|binds you in chains|firmly off to jail|drag you off to jail|brings you to the jail
action goto JAIL.CHECK when strip you of all your possessions|binds your hands behind your back
action goto JAIL.CHECK when Your silence shall be taken as an indication of your guilt|The eyes of the court are upon you
action goto %LAST when MOVE FAILED
action put exit when eval $health < 20
action put #echo >log Lime NOT LEARNING STEALING from %item in %SHOP @ $Stealing.Ranks ranks when You don't feel you learned anything useful
action put #log Lime NOT LEARNING STEALING from %item in %SHOP @ $Stealing.Ranks ranks when You don't feel you learned anything useful
action put #echo >log Red You were caught in %SHOP when notices you attempting|Guards\! Guards\!|begins to shout
action put #echo >log Purple Stealing Mind Locked! Not learning anymore when You feel that for the moment you've learned all you can

if_1 then goto %1

MAINLOOP:
goto STEALING.RUN

##################################################
#     UPDATED ENGINE                             #
##################################################



##################################################
#     PAWNING ENGINE                             #
##################################################

HAVEN.PAWN.STUFF:
	echo
	echo 
	echo ##   Gettin' some coin fer all this work!    ##
	echo 	
	echo
	pause 2
	gosub PAWN coif
	gosub PAWN rose
	gosub PAWN mace
	gosub PAWN lotion
	gosub PAWN tobacco
	gosub PAWN naphtha
	gosub PAWN %ROSSMAN.SLING 
	gosub PAWN %ROSSMAN.CLOTHING
	gosub PAWN %ROSSMAN.GENERAL
	gosub PAWN %ROSSMAN.FORGE
	gosub PAWN %ROSSMAN.HERB
	gosub PAWN %HAVEN.HERB
	gosub PAWN %HAVEN.FLOWER
	gosub PAWN %HAVEN.ARMS
	gosub PAWN %HAVEN.GENERAL
	gosub PAWN %HAVEN.CLOTH
	gosub PAWN %HAVEN.ARTIFICER
	gosub PAWN %HAVEN.IRONWORKS
	gosub PAWN %HAVEN.JOY
	gosub PAWN %HAVEN.SMOKE
	gosub PAWN %HAVEN.WEAPON
	gosub PAWN %HAVEN.BARD
	gosub PAWN %HAVEN.CLERIC
	goto HAVEN.PAWN.TO.BANK

HAVEN.BIN.STUFF:
	echo
	echo 
	echo ##################  Binning Riverhaven Haul!  ##################
	echo
	echo
	pause 2
	gosub BIN coif
	gosub BIN rose
	gosub BIN mace
	gosub BIN oil
	gosub BIN naphtha
	gosub BIN tobacco
	gosub BIN %ROSSMAN.CLOTHING
	gosub BIN %ROSSMAN.SLING 
	gosub BIN %ROSSMAN.GENERAL
	gosub BIN %ROSSMAN.FORGE
	gosub BIN %ROSSMAN.HERB
	gosub BIN %HAVEN.HERB
	gosub BIN %HAVEN.FLOWER
	gosub BIN %HAVEN.ARMS
	gosub BIN %HAVEN.GENERAL
	gosub BIN %HAVEN.CLOTH
	gosub BIN %HAVEN.ARTIFICER
	gosub BIN %HAVEN.IRONWORKS
	gosub BIN %HAVEN.JOY
	gosub BIN %HAVEN.SMOKE
	gosub BIN %HAVEN.WEAPON
	gosub BIN %HAVEN.BARD
	gosub BIN %HAVEN.CLERIC
	pause
if "$righthand" != "Empty" then put stow right
if "$lefthand" != "Empty" then put stow left
	pause 1
	goto HAVEN.DONE.ASSESS
	
CROSS.PAWN.STUFF:
	echo 
	echo ##   Gettin' some coin fer all this work!    ##
	echo 	
	pause
	gosub PAWN lotion
	gosub PAWN ring
	gosub PAWN scroll
	gosub PAWN %ARTHE.PATTERN
	gosub PAWN %ARTHE.FASHION
	gosub PAWN %ARTHE.ODDS
	gosub PAWN %XING.SCRIPT
	gosub PAWN %XING.CARD
	gosub PAWN %XING.GENERAL
	gosub PAWN %XING.WEAPON 
	gosub PAWN %XING.ARMOR 
	gosub PAWN %XING.MUSIC 
	gosub PAWN %XING.EMPATH
	gosub PAWN %XING.EMPATH2 
	gosub PAWN %XING.EMPATH3 
	gosub PAWN %XING.CLERIC 
	gosub PAWN %XING.BATH 
	gosub PAWN %XING.HABER
	gosub PAWN %XING.ARTIF 
	gosub PAWN %XING.TANNER
	gosub PAWN %XING.JEWELRY
	gosub PAWN %XING.CLOTH
	gosub PAWN %XING.SHOE
	gosub PAWN %XING.HERB
	gosub PAWN %XING.ALCHEMY
	gosub PAWN %XING.FLOWER
	pause
	gosub move out
	pause
	if %NO.BIN = ON then goto DONE.STEALING.BANK
	goto GO.BIN.CROSS

CROSS.BIN.STUFF:
	echo
	echo 
	echo ##################  Binning Crossings Haul!  ##################
	echo
	echo
	pause 2
	gosub BIN jar
	gosub BIN ring
	gosub BIN chart
	gosub BIN case
	gosub BIN scroll
	gosub BIN lotion
	gosub BIN satchel
	gosub BIN towel
	gosub BIN %ARTHE.PATTERN
	gosub BIN %ARTHE.FASHION
	gosub BIN %ARTHE.ODDS
	gosub BIN %XING.CARD
	gosub BIN %XING.ALCHEMY	
	gosub BIN %XING.WEAPON
	gosub BIN %XING.ARMOR
	gosub BIN %XING.MUSIC
	gosub BIN %XING.GENERAL
	gosub BIN %XING.CLERIC
	gosub BIN %XING.JEWELRY
	gosub BIN %XING.CLOTH
	gosub BIN %XING.SHOE
	gosub BIN %XING.EMPATH
	gosub BIN %XING.EMPATH2
	gosub BIN %XING.EMPATH3
	gosub BIN %XING.FLOWER
	gosub BIN %XING.HERB
	gosub BIN %XING.HABER
	gosub BIN %XING.TANNER
	gosub BIN %XING.ARTIF
	pause
	GOSUB stow
	pause 1
	goto DONE.STEALING.CROSS
	
LETH.PAWN.STUFF:
	echo 
	echo ##   Gettin' some coin fer all this work!    ##
	echo 	
	pause 
	gosub pawn %LETH.SKIN
	gosub pawn %LETH.BOW 
	gosub pawn %LETH.ORIGAMI
	gosub pawn %LETH.WEAPON 
	gosub pawn %LETH.WICKER
	gosub pawn %LETH.BARD
	gosub pawn %LETH.CLOTHES
	gosub pawn %LETH.WOOD 
	gosub pawn %LETH.GENERAL 
	gosub pawn %LETH.PERFUME
	pause
	gosub move out
	pause	
	if %NO.BIN = ON then goto DONE.STEALING.LETH.BANK
	goto GO.BIN.STUFF.LETH

LETH.BIN.STUFF:
	echo
	echo 
	echo ##################  Binning Leth/Arthe Haul!  ##################
	echo
	echo
	pause 2
	gosub BIN jar
	gosub BIN hairpin
	gosub BIN case
	gosub BIN scroll
	gosub BIN oil
	gosub BIN %ARTHE.PATTERN
	gosub BIN %ARTHE.FASHION
	gosub BIN %ARTHE.ODDS
	gosub BIN %LETH.SKIN
	gosub BIN %LETH.BOW
	gosub BIN %LETH.ORIGAMI
	#gosub BIN %LETH.WEAPON
	gosub BIN %LETH.WICKER
	gosub BIN %LETH.BARD
	gosub BIN %LETH.CLOTHES
	gosub BIN %LETH.WOOD
	gosub BIN %LETH.GENERAL
	gosub BIN perfume
	pause
	put stow left in bac
	put stow right in bac
	pause 1
	goto DONE.STEALING.LETH


	
########################################## 
#<          USEFUL UTILITY GOSUBS       ># 
##########################################
AUTOMAPPER:
pause 
match ACTION YOU HAVE ARRIVED
match AUTOMAPPER MOVE FAILED
PUT #goto $1
MATCHWAIT
ACTION:
RETURN

PAUSE:
	pause
	goto %LAST

RETURN: 
	RETURN

HIDE: 
	matchre HIDE.PAUSE ^\.\.\.wait|^Sorry, you may only type|fail|You are too close|You are a bit|You are too busy
	matchre HIDE notices your attempt|reveals you|ruining your hiding place|discovers you
	matchre RETURN ^You melt|^You blend|^Eh\?|^You slip|^Roundtime|You look around
	put hide
	matchwait
HIDE.PAUSE:
put stop hum
pause
goto HIDE

SNEAK:
	var direction $0
	if (("%guild" = "Thief") && (%level < 50)) then goto SNEAK.HIDE
SNEAKING:
	matchre SNEAK.PAUSE ^\.\.\.wait|^Sorry, you may only type
	matchre RETURN Roundtime|You sneak|You duck|You quickly slip
	put sneak %direction
	matchwait
SNEAK.PAUSE:
	pause
	goto SNEAKING
SNEAK.HIDE:
	pause 0.2
	matchre SNEAK.HIDE notices your attempt|reveals you|ruining your hiding place|discovers you
	matchre SNEAKING ^You melt|^You blend|^Eh\?|^You slip|^Roundtime|You look around
	put hide
	matchwait
	
MOVE:
 var move.direction $0
 moving:
 matchre stand.then.move ^You must be standing to do that\.|^You can't do that while lying down\.|^Stand up first\.
 matchre pause.then.move %retry.command.triggers
 matchre retreat.from.melee.then.move ^You are engaged to .+ melee range\!|^You try to move, but you're engaged\.
 matchre retreat.from.pole.then.move ^You are engaged to .+ at pole weapon range\!|^While in combat\?  You'll have better luck if you first retreat\.
 matchre move.return ^Obvious
 matchre move.error ^You can't go there\.|^You can't swim in that direction\.
 put %move.direction
 matchwait
 stand.then.move:
 gosub stand
 goto moving
 pause.then.move:
 pause .2
 goto moving
 retreat.from.melee.then.move:
 put retreat
 retreat.from.pole.then.move:
 gosub stand
 put retreat
 goto moving
 move.error:
 echo * Bad move direction, will try next command in 1 second. *
 put .alert
 pause
 return
 move.return:
 RETURN
 
moveRandomDirection:
 gosub move look
 if $north then
 {
 gosub move north
 put #parse MOVED
 return
 }
 if $northeast then
 {
 gosub move northeast
 put #parse MOVED
 return
 }
 if $east then
 {
 gosub move east
 put #parse MOVED
 return
 }
 if $southeast then
 {
 gosub move southeast
 put #parse MOVED
 return
 }
 if $south then
 {
 gosub move south
 put #parse MOVED
 return
 }
 if $southwest then
 {
 gosub move southwest
 put #parse MOVED
 return
 }
 if $west then
 {
 gosub move west
 put #parse MOVED
 return
 }
 if $northwest then
 {
 gosub move northwest
 put #parse MOVED
 return
 }
 if $out then
 {
 gosub move out
 put #parse MOVED
 return
 }
 if $up then
 {
 gosub move up
 put #parse MOVED
 return
 }
 if $down then
 {
 gosub move down
 put #parse MOVED
 return
 }
 echo * NO DIRECTION FOUND! *
 put .alert
 put #parse NO MOVE
 return
 
	

########################
#   STEALING ROUTINE   #
########################
STEAL:
	var item $0
STEAL.1:
if "$righthand" != "Empty" then GOSUB stow
if "$lefthand" != "Empty" then GOSUB stow
pause 0.5
if ("$hidden" != "1") then put hide
pause 1

if $StealingPerceive = "No" then goto STEALING
	put perc
	pause 5
	goto STEALING

if $StealingPerceiveHealth = "No" then goto STEALING
	put perc
	pause 5
	goto STEALING

RESTEAL:
if ("$hidden" != "1") then put hide
pause .5
if $StealingMark = "No" then goto STEALING
MARKING:
	if %marking == OFF then goto STEALING
	pause .5
		matchre STEAL.RETURN Mark what\?|You can not make marks on
		matchre TOO.HOT you are being watched|looking for a reason to call the guards|beyond foolish|you're pretty sure you'll be caught|it would likely be futile|gavel echoes through your mind|feel the taste of bitter failure|a long shot|chances to lift it|quite the struggle|Guards! Guards!
		matchre STEALING Roundtime
		matchre MARK.LAST to take unwanted notice of you
	put mark %item %item.location
	matchwait

MARK.LAST:
var marking OFF
STEALING:
	pause .5
		matchre STEAL.1 ^You need at least one hand free
		matchre STEAL.RETURN You haven't picked something|You can't steal
		matchre TOO.HOT for help\.|realize that you are being watched
		matchre STEAL.CHECK Roundtime		
	put steal %item %item.location
	matchwait

STEAL.CHECK:
	math stolen add 1
	if %stolen >= %stealcount then goto STEAL.RETURN
	if %stolen <= 1 then goto RESTEAL
	if %stolen == 2 then GOSUB STOW
	if %stolen <= 3 then goto RESTEAL
	if %stolen == 4 then GOSUB stow
	if %stolen >= 6 then goto STEAL.RETURN
	goto RESTEAL

TOO.HOT:
	var LEAVE.SHOP YES
	put #echo >log Lime NOT STEALING from %SHOP, too much heat
STEAL.RETURN:
	action remove You don't feel you learned anything useful from this trivial theft
	action remove notices you attempting to make the grab and begins to shout for help.
	var stolen 0
	var stealcount %steal.count
	var item.location 
	GOSUB stow
	RETURN
	
	
#######################
#   BINNING ROUTINE   #
#######################
BIN:
	var BIN.ITEM $0
GET.ITEM:
		matchre GET.ITEM.PAUSE \.\.\.wait|^Sorry, you may only type
		matchre BIN.ITEM You get|You are already|You pick up
		matchre BIN.RETURN What were you referring|^Please rephrase that command|I could not|But that is
	put get my %BIN.ITEM from my %STEALCONTAINER
	matchwait
GET.ITEM.PAUSE:
	pause 0.5
	goto GET.ITEM

BIN.ITEM:
		matchre BIN.ITEM.PAUSE \.\.\.wait|^Sorry, you may only type	
		matchre GET.ITEM ^A bored-looking Human boy says|Nice work
		match BIN.DROP about as cold as it gets
		matchre BIN.RETURN ^Please rephrase that command|You aren't
	put put %BIN.ITEM in bin
	matchwait
BIN.ITEM.PAUSE:
	pause 0.5
	goto BIN.ITEM
BIN.DROP:
	put drop %BIN.ITEM
	pause 0.2
	goto GET.ITEM
BIN.RETURN:
	pause 0.1
	RETURN


#######################
#   PAWNING ROUTINE   #
#######################

PAWN:
	var PAWN.ITEM $0
PAWN.GET: 
	matchre PAWN.BIN ^You need a free hand
	matchre PAWN.SELL /You get|already holding/i 
	matchre RETURN What were you referring|^Please rephrase that command|I could not|But that is
	put get my %PAWN.ITEM from %STEALCONTAINER
	matchwait 
PAWN.SELL: 
	match PAWN.GET You sell your
	matchre PAWN.BIN.RETURN Cormyn shakes his head|looks puzzled|Ioun shakes his head|Not worth buying
	matchre BUCKET You'll want to empty that first
	put sell my %PAWN.ITEM
	matchwait
PAWN.BIN.RETURN:
	put stow right;stow left
	pause 0.5
	goto PAWN.RETURN
PAWN.BIN:
	if %NO.BIN = ON then goto BUCKET
	matchre PAWN.GET /you put your|What were you|you should be holding|stow help/i
	matchre BUCKET /long to fit|There isn't any more room|too heavy|no matter/i
	matchre BUCKET What were you|You can't do that
	put stow right;stow left
	matchwait
BUCKET: 
	matchre PAWN.GET /You put|You drop|You toss/i 
	put PUT MY %PAWN.ITEM in bucket	
	put empty right
	matchwait 5
PAWN.RETURN:
var NO.BIN OFF
RETURN


#############################
#       STOW ROUTINE        #
#############################

STOW: 
pause 0.5
if ("$righthandnoun" = "stove") then put empty left;empty right
if ("$righthandnoun" = "cauldron") then put empty left;empty right
pause 0.2
pause 0.1
	matchre SECOND.BAG /You just can't get|no matter how you arrange|^There isn't any more room|too heavy|too long to fit|won't fit/i
	matchre RETURN /You put|What were you|You can't do|I could not|Perhaps you|Stow what/i  
if "$righthand" != "Empty" then put put $righthandnoun in my %STEALCONTAINER
if "$lefthand" != "Empty" then put put $lefthandnoun in my %STEALCONTAINER
matchwait 2
	RETURN
SECOND.BAG:
pause 0.2
	matchre DROP.ITEM /You just can't get|You can't do|no matter how you arrange|any more room|too heavy|too long to fit|won't fit/i
	matchre RETURN /You put|What were you|I could not|Perhaps you|Stow what/i  
if "$righthand" != "Empty" then put put $righthandnoun in my %STEALCONTAINER
if "$lefthand" != "Empty" then put put $lefthandnoun in my %STEALCONTAINER
matchwait 2
RETURN

DROP.ITEM:
	pause 0.2
	put empty left
	pause 0.5
	put empty right
	RETURN

STAND:
	pause 0.5
	put dance
	pause 0.2
	put stand
	pause 0.3
	RETURN
	
########################################
#        BEGIN STEALING SECTION        #
########################################

STEALING.RUN:
var LAST STEALING.RUN
var LOCATION Crossing
pause .2
echo
echo *** STARTING STEALING RUN!
echo
put stop play
pause .5
if "$righthand" != "Empty" then put stow right
if "$lefthand" != "Empty" then put stow left
pause .5

START:
ARMOR.CHECK:
		matchre REMOVE.AND.STOW.1 (leathers|glove|handguards|helm|shirt|coat|hood|collar|balaclava|aventail|greaves|vambraces|shield|buckler|\btarge\b|coif|cowl|gauntlet|half plate|lorica|breastplate|hauberk|field plate|tasset|mask|pants)
		matchre COOKIE You have nothing of that sort|You are wearing nothing of that sort|You aren't wearing anything like that
	put inv armor
	matchwait

REMOVE.AND.STOW.1:
	var armor $0
REMOVE.ARMOR.1:
	pause 0.5
	var LAST REMOVE.ARMOR.1
		matchre PAUSE ^\.\.\.wait|^Sorry, you may only type
		matchre STOW.ARMOR.1 ^You remove|^You loosen the straps securing|^You take|^You slide
		matchre STOW.ARMOR.1 ^You sling|^You work your way out of|^You pull
	put remove %armor
	matchwait
STOW.ARMOR.1:
	pause 0.5
	var LAST STOW.ARMOR.1
		matchre PAUSE ^\.\.\.wait|^Sorry, you may only type
		match ARMOR.CHECK You put your
		matchre STOW.ARMOR.2 any more room in|closed|no matter how you arrange
	put put %armor in my %PAWN.CONTAINER
	matchwait	
STOW.ARMOR.2:
	var LAST STOW.ARMOR.2
		matchre PAUSE ^\.\.\.wait|^Sorry, you may only type
		match ARMOR.CHECK You put your
		matchre NO.MORE.STOWING any more room in|closed|no matter how you arrange
	put put %armor in my %PAWN.CONTAINER
	matchwait
NO.MORE.STOWING:
	echo **   No more room for stowing; gonna just go for it   **
	put wear %armor
	goto COOKIE

COOKIE.BREAK:
	put khri stop
	put .origami
	pause 45
	if ($concentration < 85) then goto COOKIE.BREAK.DONE
COOKIE.BREAK.DONE:
	put #script abort origami
	pause 0.5
    if "$righthandnoun" == "$origami" then put exhale $righthandnoun
	pause 0.2
	if "$righthand" != "Empty" then put stow right
	if "$lefthand" != "Empty" then put stow left
	pause .5
	put stop hum
	goto COOKIE

COOKIE:
	goto COOKIE.GO
		matchre COOKIE.GO Focusing|You're already using|With intense focus
		matchre COOKIE.BREAK You strain, but cannot focus|You have not recovered from|Your mind is already focused
	put khri start %khri1 %khri2 %khri3 %khri4
	matchwait

COOKIE.GO:
	echo %LOCATION
	if ("%LOCATION" = "Crossing") then goto CROSSING.TO.CARD
	if ("%LOCATION" = "Leth Deriel") then goto LETH.TO.SKIN
	if ("%LOCATION" = "Riverhaven") then goto HAVEN.TO.IRON
	if ("%LOCATION" = "Arthe Dale") then goto ARTHE.PATTERNS
	if ("%LOCATION" = "Rossman") then goto ROSSMAN.TO.SLING
	goto COOKIE.GO
INIT:
    math CurrentRun add 1
    #echo
    #echo *** STEALING RUN NUMBER - %CurrentRun
    #echo *** %Charges PILFERING CHARGES
    #echo *** %Binned ITEMS BINNED 
	#echo *** %Pawn ITEMS PAWNED
    #echo 
	put stop hum
    pause 2
	goto ROSSMAN.TO.SLING

ROSSMAN.TO.SLING:
	var LAST ROSSMAN.TO.SLING
	if ($hidden != 1) then gosub hide
	gosub move go gate
	gosub move go arch
	gosub automapper 22
	gosub move go draw
	gosub move go gate
	gosub automapper 71
	gosub SNEAK hut
	goto ROSSMAN.SLING
	
ROSSMAN.SLING:
	var SHOP Rossman Slings Shop
	gosub STEAL %ROSSMAN.SLING
	gosub HIDE
	if $Stealing.Ranks >= 362 then goto ROSSMAN.TO.CLOTHING
	goto ROSSMAN.TO.FORGE
	
ROSSMAN.TO.FORGE:
	var LAST ROSSMAN.TO.FORGE
	put #goto 108
	waitfor YOU HAVE ARRIVED
	goto ROSSMAN.FORGE
	
ROSSMAN.FORGE:
	var SHOP Rossman Forge
	if ($hidden != 1) then gosub hide
	gosub STEAL %ROSSMAN.FORGE
	gosub HIDE
	goto ROSSMAN.TO.CLOTHING
	
ROSSMAN.TO.CLOTHING:
	var LAST ROSSMAN.TO.CLOTHING
	put #goto 107
	waitfor YOU HAVE ARRIVED
	goto ROSSMAN.CLOTHING
	
ROSSMAN.CLOTHING:
	var SHOP Rossman Clothing Dyer
	if ($hidden != 1) then gosub hide
	gosub STEAL %ROSSMAN.CLOTHING
	gosub HIDE	
	goto ROSSMAN.TO.HERB
	
ROSSMAN.TO.HERB:
	var LAST ROSSMAN.TO.HERB
	put #goto 23
	waitfor YOU HAVE ARRIVED
	gosub SNEAK cottage
	goto ROSSMAN.HERB
	
ROSSMAN.HERB:
	var SHOP Rossman Herb Shop
	gosub STEAL %ROSSMAN.HERB
	gosub HIDE
	goto ROSSMAN.TO.GENERAL

ROSSMAN.TO.GENERAL:
	var LAST ROSSMAN.TO.GENERAL
	put #goto 15
	waitfor YOU HAVE ARRIVED
	gosub SNEAK store
	goto ROSSMAN.GENERAL

ROSSMAN.GENERAL:
	var SHOP Rossman General Store
	gosub STEAL %ROSSMAN.GENERAL
	pause
	put unhide
	pause
	goto GOING.HAVEN

GOING.HAVEN:
	var LOCATION Riverhaven
	put #goto 145
	waitfor YOU HAVE ARRIVED
	pause
	send .travel haven
	waitfor YOU HAVE ARRIVED
	goto HAVEN.STEAL
	
HAVEN.STEAL:
	var LOCATION Riverhaven
	send stop hum
	pause 0.5
	gosub HIDE
	goto COOKIE
	goto HAVEN.TO.IRON

HAVEN.TO.IRON:
	var LAST HAVEN.TO.IRON
	put #goto iron
	waitfor YOU HAVE ARRIVED
	goto HAVEN.IRONWORKS
	
HAVEN.IRONWORKS:
	var SHOP Riverhaven Ironworks
	if ($hidden != 1) then gosub hide
	gosub STEAL %HAVEN.IRONWORKS
	gosub HIDE
	if $Stealing.Ranks >= 385 then goto HAVEN.NAPHTHA.TO.FLOWER
	goto HAVEN.IRON.TO.NAPHTHA
	
HAVEN.IRON.TO.NAPHTHA:
	var LAST HAVEN.IRON.TO.NAPHTHA
	send #goto Naptha
	waitfor YOU HAVE ARRIVED
	goto HAVEN.NAPHTHA

HAVEN.NAPHTHA:
	var SHOP Riverhaven Naptha Cart
	var item.location %Haven.Naphtha.Loc
	gosub STEAL %HAVEN.NAPHTHA
	gosub HIDE
	goto HAVEN.NAPHTHA.TO.FLOWER
	
HAVEN.NAPHTHA.TO.FLOWER:
	var LAST HAVEN.NAPHTHA.TO.FLOWER
	send #goto cecel
	waitfor YOU HAVE ARRIVED
	send sneak shop
	pause
	goto HAVEN.FLOWER

HAVEN.FLOWER:
	var SHOP Riverhaven Florist
	gosub STEAL %HAVEN.FLOWER
	gosub HIDE
	goto HAVEN.FLOWER.TO.ARMS
	
HAVEN.FLOWER.TO.ARMS:
	var LAST HAVEN.FLOWER.TO.ARMS
	send #goto noel
	waitfor YOU HAVE ARRIVED
	goto HAVEN.ARMS

HAVEN.ARMS:
	var SHOP Riverhaven Noel's Arms
	gosub STEAL %HAVEN.ARMS
	gosub HIDE
	goto HAVEN.ARMS.TO.GENERAL
	
HAVEN.ARMS.TO.GENERAL:
	var LAST HAVEN.ARMS.TO.GENERAL
	send #goto general
	waitfor YOU HAVE ARRIVED
	goto HAVEN.GENERAL

HAVEN.GENERAL:
	var SHOP Riverhaven General Store
	gosub STEAL %HAVEN.GENERAL
	gosub HIDE
	goto HAVEN.GENERAL.TO.CLOTH
	
HAVEN.GENERAL.TO.CLOTH:
	var LAST HAVEN.GENERAL.TO.CLOTH
	send #goto cloth
	waitfor YOU HAVE ARRIVED
	goto HAVEN.CLOTH

HAVEN.CLOTH:
	var SHOP Riverhaven Clothiers
	gosub STEAL %HAVEN.CLOTH
	gosub HIDE
	goto HAVEN.CLOTH.TO.ARTIFICER
	
HAVEN.CLOTH.TO.ARTIFICER:
	var LAST HAVEN.CLOTH.TO.ARTIFICER
	send #goto artif
	waitfor YOU HAVE ARRIVED
	goto HAVEN.ARTIFICER

HAVEN.ARTIFICER:
	var SHOP Riverhaven Artificer
	gosub STEAL %HAVEN.ARTIFICER
	gosub HIDE
	goto HAVEN.ARTIFICER.TO.JOY

HAVEN.ARTIFICER.TO.JOY:
	var LAST HAVEN.ARTIFICER.TO.JOY
	send #goto smara
	waitfor YOU HAVE ARRIVED
	goto HAVEN.JOY

HAVEN.JOY:
	var SHOP Riverhaven Joy Shop
	gosub STEAL %HAVEN.JOY
	gosub move out
	pause
	goto HAVEN.TIME
	
HAVEN.TIME:
	if $Stealing.Ranks >= 366 then goto HAVEN.SMOKE.TO.WEAPON
	matchre HAVEN.JOY.TO.SMOKE morning|mid-morning|midday|afternoon|mid-afternoon|late afternoon|late morning
	matchre HAVEN.SMOKE.TO.WEAPON dawn|night|early evening|late evening|evening|midnight|dusk|sunset|sunrise
	put time
	matchwait 7
	goto HAVEN.SMOKE.TO.WEAPON

HAVEN.JOY.TO.SMOKE:
	var LAST HAVEN.JOY.TO.SMOKE
	send #goto 42
	waitfor YOU HAVE ARRIVED
	send kneel
	send go shop
	goto HAVEN.SMOKE

HAVEN.SMOKE:
	var SHOP Riverhaven Smoke Shop
	gosub STEAL %HAVEN.SMOKE
	send out
	pause
	pause 0.5
	gosub STAND
	pause 0.5
	gosub HIDE
	goto HAVEN.SMOKE.TO.WEAPON
	
HAVEN.SMOKE.TO.WEAPON:
	var LAST HAVEN.SMOKE.TO.WEAPON
	send #goto weapon
	waitfor YOU HAVE ARRIVED
	goto HAVEN.WEAPON

HAVEN.WEAPON:
	var SHOP Riverhaven Weapon Shop
	gosub STEAL %HAVEN.WEAPON
	gosub HIDE
	goto HAVEN.WEAPON.TO.BARD
	
HAVEN.WEAPON.TO.BARD:
	var LAST HAVEN.WEAPON.TO.BARD
	send #goto bard shop
	waitfor YOU HAVE ARRIVED
	goto HAVEN.BARD

HAVEN.BARD:
	var SHOP Riverhaven Bard Shop
	gosub STEAL %HAVEN.BARD
	gosub HIDE
	goto HAVEN.BARD.TO.CLERIC
	
HAVEN.BARD.TO.CLERIC:
	var LAST HAVEN.BARD.TO.CLERIC
	send #goto cleric shop
	waitfor YOU HAVE ARRIVED
	goto HAVEN.CLERIC

HAVEN.CLERIC:
	var SHOP Riverhaven Cleric Shop
	gosub STEAL %HAVEN.CLERIC
	goto GO.PAWN.STUFF.HAVEN
	
GO.PAWN.STUFF.HAVEN:
	var LAST GO.PAWN.STUFF.HAVEN
	send #goto pawn
	waitfor YOU HAVE ARRIVED
	goto HAVEN.PAWN.STUFF
	
HAVEN.PAWN.TO.BANK:
	send khri stop
	send #goto teller
	waitfor YOU HAVE ARRIVED
	put withd 3 silver
	pause 0.5
	gosub move go arch
	gosub move out
	goto HAVEN.FIND.GUILD
	
HAVEN.FIND.GUILD:
	pause 0.5
	match hole1 selling off some stolen goods
	match hole2 Crescent Way
	match hole3 Silvermoon Road
	match hole4 the boss is with his own kind
	match hole5 cooped up
	match hole6 around the rookery
	matchre NO.CONTACTS Apparently there are too many eyes on you|USAGE|walks off|look of disgust
	put contact guild
	matchwait 7
	goto NO.CONTACTS

hole1:
var LOCATION hole1
put #goto 33
waitfor YOU HAVE ARRIVED
put search
waitfor Roundtime:
pause
send knock door
pause 0.5
put whisp door %HAVEN.PASSWORD
pause
gosub move climb stair
gosub move ne
gosub move go corner
goto HAVEN.BIN.STUFF

hole2:
var LOCATION hole2
put #goto 47
waitfor YOU HAVE ARRIVED
put search
waitfor Roundtime:
pause
send knock door
pause 0.5 
put whisp door %HAVEN.PASSWORD
pause
put look shadow
put sear shadow
pause 0.5
gosub move go open
gosub move go cor
goto HAVEN.BIN.STUFF

hole3:
var LOCATION hole3
put #goto 36
waitfor YOU HAVE ARRIVED
put search
waitfor Roundtime:
pause 1
put knock door
pause
put whisp door %HAVEN.PASSWORD
pause
put look floor
gosub move go door
gosub move go cor
goto HAVEN.BIN.STUFF

hole4:
var LOCATION hole4
put #goto 303
waitfor YOU HAVE ARRIVED
put search
pause
put knock grat
pause
put whisp grat %HAVEN.PASSWORD
pause
gosub move go door
gosub move ne
gosub move go nook
goto HAVEN.BIN.STUFF

hole5:
var LOCATION hole5
put #goto 41
waitfor YOU HAVE ARRIVED
put search
waitfor Roundtime:
pause 1
put knock door
pause
put whisp doo %HAVEN.PASSWORD
pause
gosub move n
gosub move go corn
goto HAVEN.BIN.STUFF

hole6:
var LOCATION hole6
put #goto 306
waitfor YOU HAVE ARRIVED
put search
pause
put knock door
pause
put whisp door %HAVEN.PASSWORD
pause
gosub move go arch
gosub move climb st
gosub move go cor
goto HAVEN.BIN.STUFF

NO.CONTACTS:
var LOCATION Lost
put .findguild
waitfor FOUND GUILD!
goto HAVEN.BIN.STUFF

HAVEN.DONE.ASSESS:
	var LAST HAVEN.DONE.ASSESS
    math RunsCompleted add 1
    put exp 
	pause     	
    #echo
    #echo *** %RunsCompleted - STEALING RUN(S) COMPLETED
    #echo *** %Charges PILFERING CHARGES
    #echo *** %Binned ITEMS BINNED 
	#echo *** %Pawn ITEMS PAWNED
    #echo  
	pause
	if ("%LOCATION" = "Lost") then goto PLZ.CONT
	if ("%LOCATION" = "hole1") then goto hole1.escape
	if ("%LOCATION" = "hole2") then goto hole2.escape
	if ("%LOCATION" = "hole3") then goto hole3.escape
	if ("%LOCATION" = "hole4") then goto hole4.escape
	if ("%LOCATION" = "hole5") then goto hole5.escape
	if ("%LOCATION" = "hole6") then goto hole6.escape
	pause 5

PLZ.CONT:
put ask swan about exp
pause
pause 0.5
put plzcont
pause 15
goto DONE.STEALING.HAVEN

hole1.escape:
	gosub move out
	gosub move sw
    put climb stair
	put go door
	pause
	goto DONE.STEALING.HAVEN
	
hole2.escape:
	gosub move out
	gosub move out
	gosub move go door
	pause
	goto DONE.STEALING.HAVEN
	
hole3.escape:
	gosub move out
	put climb door
	gosub move out
	pause	
	goto DONE.STEALING.HAVEN
	
hole4.escape:
	gosub move out
	gosub move sw
	gosub move go door
	gosub move go grate
	gosub move out
	pause	
	goto DONE.STEALING.HAVEN
	
hole5.escape:
	gosub move out
	gosub move s
	gosub move go door
	pause	
	goto DONE.STEALING.HAVEN

hole6.escape:
	gosub move out
	put climb sta
	gosub move go arc
	gosub move go door
	pause
	goto DONE.STEALING.HAVEN

DONE.STEALING.HAVEN:
	pause
	var LAST DONE.STEALING.HAVEN
	# Heading back to the bank
	put #goto bank
	waitfor YOU HAVE ARRIVED
	put .bank
	pause 6
	put #parse DONE PAWNING
	pause 2
	put #goto town
	waitfor YOU HAVE ARRIVED
	pause 
	pause 0.5
	goto TO.ARTHE

TO.ARTHE:
	var LOCATION Arthe Dale
	var LAST TO.ARTHE
	send .travel arthe
	waitfor YOU HAVE ARRIVED
	send #goto 122
	waitfor YOU HAVE ARRIVED
	pause 
	pause 0.5
	gosub HIDE

ARTHE.TO.PATTERN:
	send #goto Pattern Shop
	waitfor YOU HAVE ARRIVED
	goto COOKIE
	goto ARTHE.PATTERNS

ARTHE.PATTERNS:
	var SHOP Arthe Dale Pattern Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %ARTHE.PATTERN
	gosub HIDE
	goto ARTHE.TO.FASHION

ARTHE.TO.FASHION:
	var LAST ARTHE.TO.FASHION
	# Auto walk to the Arthe Dale Fashion shop
	send #goto Fashion Shop
	waitfor YOU HAVE ARRIVED
	goto ARTHE.FASHION	
	
ARTHE.FASHION:
	var SHOP Arthe Dale Fashion Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %ARTHE.FASHION
	gosub HIDE
	goto ARTHE.TO.ODDS

ARTHE.TO.ODDS:
	var LAST ARTHE.TO.ODDS
	# Auto walk to the Arthe Dale Odds'n'Ends store
	send #goto Odds Shop
	waitfor YOU HAVE ARRIVED
	goto ARTHE.ODDS

ARTHE.ODDS:
	var SHOP Arthe Dale Odds'n'Ends Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %ARTHE.ODDS
	gosub hide
	goto ARTHE.TO.BALLADS

ARTHE.TO.BALLADS:
	var LAST ARTHE.TO.BALLADS
	# Auto walk to the Arthe Dale Song shop
	send #goto Bardic Ballads
	waitfor YOU HAVE ARRIVED
	goto ARTHE.BALLADS

ARTHE.BALLADS:
	var SHOP Arthe Dale Ballads Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %ARTHE.BALLAD
	goto LEAVE.ARTHE

LEAVE.ARTHE:
	var LAST LEAVE.ARTHE
	send khri stop
	send hum %hum	
	pause 0.5
	# Auto walk to outside the Arthe Dale gate
	send #goto 1
	waitfor YOU HAVE ARRIVED
	goto TO.CROSSING
	
TO.CROSSING:
	var LOCATION Crossing
	var LAST TO.CROSSING
	pause 0.5
	send .travel cross
	waitfor YOU HAVE ARRIVED
	goto WARRANT.CHECK.CROSS
	
WARRANT.CHECK.CROSS:
	var LAST CROSSING.STEALING
	var LOCATION Crossing
	put surrender guard
	pause
	goto CROSSING.CLIMB
	
CROSSING.CLIMB:
	var LAST CROSSING.CLIMB
	var LOCATION Crossing
	send .climb
	waitfor CLIMBING LOCKED

CROSSING.STEALING:
	echo *** STEALING FROM CROSSING
	goto COOKIE
	goto CROSSING.TO.SCRIPT

TO.XING.SCRIPT:
CROSSING.TO.SCRIPT: 
	var LOCATION Crossing
	var LAST CROSSING.TO.SCRIPT
	echo wtf
	put #goto 362
	waitfor YOU HAVE ARRIVED
	send #goto Script
	waitfor YOU HAVE ARRIVED
	goto CROSSING.SCRIPTORIUM

CROSSING.SCRIPTORIUM:
	var SHOP Crossing Scriptorium
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.SCRIPT
	pause
	put #goto 3
	waitfor YOU HAVE ARRIVED
	return

TO.XING.CARD:
CROSSING.TO.CARD:
	pause
	pause 0.5
	var LAST CROSSING.TO.CARD
	send #goto Card Shop
	waitfor YOU HAVE ARRIVED
	goto CROSSING.CARD

CROSSING.CARD:
	var SHOP Crossing Card Shop
	gosub STEAL %XING.CARD
	gosub HIDE
	return

TO.XING.GENERAL:
CROSSING.TO.GENERAL:
	var LAST CROSSING.TO.GENERAL
	send #goto General
	waitfor YOU HAVE ARRIVED
	goto CROSSING.GENERAL

CROSSING.GENERAL:
	var SHOP Crossing General Store
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.GENERAL
	gosub HIDE
	return

TO.XING.WEAPON:
CROSSING.TO.WEAPON:
	var LAST CROSSING.TO.WEAPON
	send #goto Weapon
	waitfor YOU HAVE ARRIVED
	goto CROSSING.WEAPON		

CROSSING.WEAPON:
	var SHOP Crossing Weapon Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.WEAPON
	gosub HIDE
	return

TO.XING.ARMOR:
CROSSING.TO.ARMOR:
	var LAST CROSSING.TO.ARMOR
	send #goto Armor
	waitfor YOU HAVE ARRIVED
	goto CROSSING.ARMOR

CROSSING.ARMOR:
	var SHOP Crossing Armor Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.ARMOR
	gosub HIDE
	return

TO.XING.MUSIC:
CROSSING.TO.MUSIC:
	var LAST CROSSING.TO.MUSIC
	send #goto Music
	waitfor YOU HAVE ARRIVED	
	goto CROSSING.MUSIC

CROSSING.MUSIC:
	var SHOP Crossing Music Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.MUSIC
	return

TO.XING.EMPATH:
CROSSING.TO.EMPATH:
	var LAST CROSSING.TO.EMPATH
	# Auto walk to the Crossing Empath Store
	send #goto Empath Shop
	waitfor YOU HAVE ARRIVED
	goto CROSSING.EMPATH

CROSSING.EMPATH:
	var SHOP Crossing Empath Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.EMPATH
	gosub HIDE
	return

TO.XING.EMPATH2:
CROSSING.TO.EMPATH2:
	var LAST CROSSING.TO.EMPATH2
	put #goto 664
	waitfor YOU HAVE ARRIVED
	goto CROSSING.EMPATH2

CROSSING.EMPATH2:
	var SHOP Crossing Empath Shop 2
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.EMPATH2
	gosub HIDE
	return

TO.XING.EMPATH3:
CROSSING.TO.EMPATH3:
	var LAST CROSSING.TO.EMPATH3
	put #goto 665
	waitfor YOU HAVE ARRIVED
	goto CROSSING.EMPATH3

CROSSING.EMPATH3:
	var SHOP Crossing Empath Shop 3
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.EMPATH3
	gosub HIDE
	if $Stealing.Ranks >= 357 then goto CROSSING.TO.CLERIC
	return

TO.XING.FLOWER:
CROSSING.TO.FLORIST:
	var LAST CROSSING.TO.FLORIST
	# Auto walk to the Crossing Florist
	send #goto Florist
	waitfor YOU HAVE ARRIVED
	goto CROSSING.FLORIST

CROSSING.FLORIST:
	var SHOP Crossing Florist
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.FLOWER
	gosub HIDE
	return

TO.XING.CLERIC:
CROSSING.TO.CLERIC:
	var LAST CROSSING.TO.CLERIC
	# Auto walk to the Crossing Cleric Store
	send #goto Clerical
	waitfor YOU HAVE ARRIVED	
	goto CROSSING.CLERIC

CROSSING.CLERIC:
	var SHOP Crossing Cleric Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.CLERIC
	gosub HIDE
	return

TO.XING.BATH:
CROSSING.TO.BATH:
	var LAST CROSSING.TO.BATH
	var item.location %XING.BATH.LOC
	send #goto Bathhouse
	waitfor YOU HAVE ARRIVED
	goto CROSSING.BATHHOUSE

CROSSING.BATHHOUSE:
	var SHOP Crossing Bathhouse
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.BATH
	gosub HIDE
	return

TO.XING.HABER:
CROSSING.TO.HABER:
	var LAST CROSSING.TO.HABER
	# Auto walk to the Crossing Haberdashery
	send #goto Haberdashery
	waitfor YOU HAVE ARRIVED
	goto CROSSING.HABERDASHERY

CROSSING.HABERDASHERY:
	var SHOP Crossing Haberdashery
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.HABER
	gosub HIDE
	if $Stealing.Ranks >= 385 then goto CROSSING.TO.TANNER
	return

TO.XING.ARTIF:
CROSSING.TO.ARTIFICE:
	var LAST CROSSING.TO.ARTIFICE
	# Auto walk to the Crossing Artificer
	send #goto Artificer
	waitfor YOU HAVE ARRIVED
	goto CROSSING.ARTIFICER

CROSSING.ARTIFICER:
	var SHOP Crossing Artificer
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.ARTIF
	return

TO.XING.TANNER:
CROSSING.TO.TANNER:
	var LAST CROSSING.TO.TANNER
	# Auto walk to the Crossing Tanner
	send #goto 223
	waitfor YOU HAVE ARRIVED	
	goto CROSSING.TANNER

CROSSING.TANNER:
	var SHOP Crossing Tanner
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.TANNER
	gosub HIDE
	return

TO.XING.JEWELRY:
CROSSING.TO.JEWELRY:
	var LAST CROSSING.TO.JEWELRY
	# Auto walk to the Crossing Jewelry Store
	send #goto Jewelry Shop
	waitfor YOU HAVE ARRIVED
	goto CROSSING.JEWELRY

CROSSING.JEWELRY:
	var SHOP Crossing Jewelry Shop
	if ($hidden != 1) then gosub hide	
	gosub STEAL %XING.JEWELRY
	gosub HIDE
	return

TO.XING.CLOTH:
CROSSING.TO.CLOTHING:
	var LAST CROSSING.TO.CLOTHING
	# Auto walk to the Crossing Clothing Store
	send #goto Clothing Shop
	waitfor YOU HAVE ARRIVED
	goto CROSSING.CLOTHING

CROSSING.CLOTHING:
	var SHOP Crossing Clothing Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.CLOTH
	gosub HIDE
	return

TO.XING.SHOE:
CROSSING.TO.SHOE:
	var LAST CROSSING.TO.SHOE
	if $Stealing.Ranks >= 300 then goto CROSSING.TO.HERBS
	# Auto walk to the Crossing Shoe Store
	send #goto Cobbler
	waitfor YOU HAVE ARRIVED
	goto CROSSING.SHOES

CROSSING.SHOES:
	var SHOP Crossing Shoe Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.SHOE
	gosub HIDE
	return

TO.XING.HERB:
CROSSING.TO.HERBS:
	var LAST CROSSING.TO.HERBS
	if $Stealing.Ranks >= 334 then goto CROSSING.TO.ALCHEMY
	# Auto walk to the Crossing Herb Store
	send #goto Herbalist
	waitfor YOU HAVE ARRIVED
	goto CROSSING.HERBS

CROSSING.HERBS:
	var SHOP Crossing Herb Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.HERB
	gosub HIDE
	return

TO.XING.ALCHEMY:
CROSSING.TO.ALCHEMY:
	var LAST CROSSING.TO.ALCHEMY
	# Auto walk to the Crossing Alchemy Store
	send #goto Alchemist
	waitfor YOU HAVE ARRIVED
	goto CROSSING.ALCHEMY

CROSSING.ALCHEMY:
	var SHOP Crossing Alchemy Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %XING.ALCHEMY
	gosub HIDE
	return
	
GO.PAWN.STUFF.CROSS:
	var LAST GO.PAWN.STUFF.CROSS
	var NO.BIN OFF
	send khri stop
	if $hidden = 1 then put unhid
	pause
	send #goto pawn
    waitfor YOU HAVE ARRIVED
	send go shop
	goto CROSS.PAWN.STUFF
	
GO.BIN.CROSS:
	var LAST GO.BIN.CROSS
	send #goto 102
	waitfor YOU HAVE ARRIVED
	pause 0.5
	move go rui
	move w
	move go spa
	goto CROSS.BIN.STUFF

DONE.STEALING.CROSS:
	var LAST DONE.STEALING.CROSS
	send go door
	pause
	put ask kal about exp
	put ask kal about exp
	pause 2
	pause 0.5
	send go door
	pause 2
    # Leaving the guild
	send #goto 13
	waitfor YOU HAVE ARRIVED
DONE.STEALING.BANK:
	send #goto bank
	waitfor YOU HAVE ARRIVED
	put #parse DONE PAWNING
	pause 2	
	if $Stealing.LearningRate > 32 then goto END.OF.STEALING
	goto END.OF.STEALING
	
HEAD.TO.LETH:
	echo
	echo *** STEALING FROM LETH DERIEL!
	echo
	var LOCATION Leth Deriel
	# Auto walk to the 5th passage
	send .travel leth
	waitfor YOU HAVE ARRIVED
	send stop hum
	pause
WARRANT.CHECK.LETH:
	pause
	put surrender warden
	pause
	gosub HIDE
	goto COOKIE

LETH.TO.SKIN:
	var LAST LETH.TO.SKIN
	# Auto walk to the Leth Skin Shop
	put #goto Skin Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.SKIN.SHOP

LETH.SKIN.SHOP:
	var SHOP Leth Skin Shop
	var stealcount 6
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.SKIN
	pause .5
	gosub HIDE
	pause
	goto LETH.SKIN.TO.SELL

LETH.SKIN.TO.SELL:
	var LAST LETH.SKIN.TO.SELL
	pause 
	gosub move go door
	echo
	echo   *** Selling the skins you just stole ***
	echo
	goto LETH.SELL.PELTS
LETH.SELL.PELTS:
	pause .5
	matchre LETH.TO.BOWYER want to get|What were|I could not
	matchre LETH.PELT.SELL.1 You get|You are already holding
	put get pelt
	matchwait
LETH.PELT.SELL.1:
	pause .5
	put sell pelt
	goto LETH.SELL.PELTS

LETH.TO.BOWYER:
	var LAST LETH.TO.BOWYER
	# Auto walk to the Leth Bowyer
	put #goto Bowyer
	waitfor YOU HAVE ARRIVED
	goto LETH.BOWYER

LETH.BOWYER:
	var SHOP Leth Bowyer
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.BOW
	gosub HIDE
	goto LETH.TO.ORIGAMI

LETH.TO.ORIGAMI:
	var LAST LETH.TO.ORIGAMI
	# Auto walk to the Leth Origami Shop
	put #goto Origami Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.ORIGAMI.SHOP

LETH.ORIGAMI.SHOP:
	var SHOP Leth Origami Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.ORIGAMI
	gosub HIDE
	if ($Stealing.Ranks > 350) then goto LETH.TO.WEAPON
	goto LETH.TO.WICKER

LETH.TO.WEAPON:
	var LAST LETH.TO.WEAPON
	# Auto walk to the Leth Weapon Shop
	put #goto Weapon Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.WEAPON.SHOP

LETH.WEAPON.SHOP:
	var SHOP Leth Weapon Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.WEAPON
	gosub HIDE
	goto LETH.TO.WICKER

LETH.TO.WICKER:
	var LAST LETH.TO.WICKER
	# Auto walk to the Leth Wicker Shop
	put #goto Wicker Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.WICKER.SHOP

LETH.WICKER.SHOP:
	var SHOP Leth Wicker Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.WICKER
	gosub HIDE
	goto LETH.TO.BARD

LETH.TO.BARD:
	var LAST LETH.TO.BARD
	if $Stealing.Ranks >= 300 then goto LETH.TO.CLOTHES
	# Auto walk to the Leth Bard Shop
	put #goto Bard Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.BARD.SHOP

LETH.BARD.SHOP:
	var SHOP Leth Bard Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.BARD
	gosub HIDE
	goto LETH.TO.CLOTHES

LETH.TO.CLOTHES:
	pause 0.5
	var LAST LETH.TO.CLOTHES
	# Auto walk to the Leth Clothes Shop
	put #goto Clothes Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.CLOTHES.SHOP

LETH.CLOTHES.SHOP:
	var SHOP Leth Clothes Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.CLOTHES
	gosub HIDE
	goto LETH.TO.WOOD

LETH.TO.WOOD:
	pause 0.5
	var LAST LETH.TO.WOOD
	# Auto walk to the Leth Wood Shop
	put #goto Wood Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.WOOD.SHOP

LETH.WOOD.SHOP:
	var SHOP Leth Wood Shop
	var stealcount 3
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.WOOD
	gosub HIDE
	goto LETH.TO.GENERAL

LETH.TO.GENERAL:
	pause 0.5
	var LAST LETH.TO.GENERAL
	# Auto walk to the Leth General Store
	put #goto General Store
	waitfor YOU HAVE ARRIVED
	goto LETH.GENERAL.STORE

LETH.GENERAL.STORE:
	var SHOP Leth General Store
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.GENERAL
	gosub HIDE
	goto LETH.TO.PERFUME

LETH.TO.PERFUME:
	var LAST LETH.TO.PERFUME
	# Auto walk to the Leth Perfume Shop
	send #goto Perfume Shop
	waitfor YOU HAVE ARRIVED
	goto LETH.PERFUME.SHOP

LETH.PERFUME.SHOP:
	var SHOP Leth Perfume Shop
	if ($hidden != 1) then gosub hide
	gosub STEAL %LETH.PERFUME
	gosub HIDE
	goto LETH.TO.CROSSING

LETH.TO.CROSSING:
	var LAST LETH.TO.CROSSING
	# Auto walk to the South Trade Route
	send #goto 115
	waitfor YOU HAVE ARRIVED
	send unhide
	# Auto walk to 5th Passage Entrance
	send #goto 108
	waitfor YOU HAVE ARRIVED
	# Auto walk to Crossing via 5th Passage
	send #goto 21
	waitfor YOU HAVE ARRIVED
	goto GO.PAWN.STUFF.LETH

GO.PAWN.STUFF.LETH:
	var LAST GO.PAWN.STUFF.LETH
	put khri stop
	put #goto pawn
	waitfor YOU HAVE ARRIVED
	pause
	put go shop
	pause 
	goto LETH.PAWN.STUFF

GO.BIN.STUFF.LETH:
	var LAST GO.BIN.STUFF.LETH
	pause
	put #goto 551
	waitfor YOU HAVE ARRIVED
	pause
	put #goto 4
	waitfor YOU HAVE ARRIVED
	goto LETH.BIN.STUFF

DONE.STEALING.LETH:
	var LOCATION None
	send go door
	pause
	put ask kal about exp
	put ask kal about exp
	pause 2
	pause 0.5
	send go door
	pause 2
	# Leaving the guild
	send #goto 12
	waitfor YOU HAVE ARRIVED
	# Heading back to the bank
DONE.STEALING.LETH.BANK:
	var LAST GOING.HAVEN
	send #goto bank
	waitfor YOU HAVE ARRIVED
	send .bank
	pause 7
END.OF.STEALING:
	var NO.BIN OFF
	put #parse DONE PAWNING
	put #parse DONE STEALING
	put #parse DONE STEALING
	put look
	pause 2
	exit
	




###############################################
#        JAILED / DEBT PAYING ROUTINE         #
###############################################
JAIL.CHECK:
put #parse STEAL.SCRIPT.JAIL
put #script abort automapper
put #script abort climb
put #script abort jail
matchre PLEAD The eyes of the court are upon you|Shouldn't you be worrying about something else at the moment
matchre JAIL.CROSS Jail Cell|Guard House, Jail Cell
matchre JAIL.CROSS2 Guard House, Office|Chamber of Justice
matchre JAIL.LETH Gallows Tree, Cell
matchre JAIL.LETH2 Gallows Tree, Dungeon
matchre JAIL.HAVEN Town Jail, The Cell|Jackwater
matchre JAIL.HAVEN2 Town Jail, Judgement Chamber
matchre JAIL.THEREN Theren Keep, Cell
matchre JAIL.THEREN2 Theren Keep, Chapel|Theren Keep, Dungeon
put look
matchwait

JAIL.THEREN:
var LOCATION Theren
echo Theren JAIL
put #parse Theren JAIL
goto JAILED
JAIL.THEREN2:
save TO.TELLER
var LOCATION Theren
goto GET_SACK

JAIL.HAVEN:
var LOCATION Riverhaven
echo RIVERHAVEN JAIL
put #parse RIVERHAVEN JAIL
goto JAILED
JAIL.HAVEN2:
var LOCATION Riverhaven
goto GET_SACK

JAIL.LETH:
var LOCATION Leth
echo LETH JAIL
put #parse LETH JAIL
goto JAILED
JAIL.LETH2:
var LOCATION Leth
goto GET_SACK

JAIL.CROSS:
var LOCATION Crossing
echo CROSSING JAIL
put #parse CROSS JAIL
goto JAILED
JAIL.CROSS2:
var LOCATION Crossing
goto GET_SACK

JAILED: 
	echo 
	echo 
	echo    *** NAILED AND JAILED! *** 
	echo *** WAITING TO BE SENTENCED! ***
	echo 
	echo
	put #echo >log Red YOU'VE BEEN ARRESTED!!!
	put #beep;#beep
	matchre PLEAD PLEAD INNOCENT or PLEAD GUILTY|Your silence shall be taken
	matchwait 120
	
PLEAD:
	put plead guilty
	pause

GET_SACK:
	pause 2
		match SACK sack
		match DEBT You glance down at your empty hands
	put glance
	matchwait

DEBT:
	gosub STAND
	echo
	echo **** Did not have enough money to pay the fine ****
	echo
	if ("%LOCATION" = "Theren") then goto THEREN.JAIL.GET.FINE
	gosub clear
	# Walking to the bank to get moneys
	if ("%LOCATION" = "Theren") then goto THEREN.JAIL.GET.FINE
TO.TELLER:
	put #goto Teller
	waitfor YOU HAVE ARRIVED
	if ("%LOCATION" = "Riverhaven") then goto FINECHECK.LIRUMS
	if ("%LOCATION" = "Rossman") then goto FINECHECK.LIRUMS
	if ("%LOCATION" = "Theren") then goto FINECHECK.LIRUMS
	FINECHECK:
		matchre SET_FINE \((\d+) copper Kronars\)$
		match NO_FINE Wealth:
		put wealth
		matchwait
	FINECHECK.LIRUMS:
		matchre SET_FINE_LIRUM \((\d+) copper Lirums\)$
		match NO_FINE Wealth:
		put wealth
		matchwait
	SET_FINE_LIRUM:
		pause 0.1
		setvariable fine $1
		if %FINE > 100000 then goto BIG_FINE
		put withdraw %fine copper lirum
		goto PAY_DEBT		
	SET_FINE:
		pause 0.1
		setvariable fine $1
		if %FINE > 100000 then goto BIG_FINE
		put withdraw %fine copper kronar
		goto PAY_DEBT
	BIG_FINE:
		math fine divide 2
		pause 1
		put withdraw %fine copper kronar
		pause 1
		put withdraw %fine copper kronar
		goto PAY_DEBT
	NO_FINE:
		echo 
		echo  You have no fine
		echo 
		goto RETURN_TO_JAIL
	PAY_DEBT:
		# Walking to pay off the debt
		put #goto Debt
		waitfor YOU HAVE ARRIVED
		put pay %fine
		pause
	RETURN_TO_JAIL:
		echo
		echo **** Heading back to jail now ****
		echo
		if ("%LOCATION" = "Theren") then goto THEREN.KEEP.JAIL
		# Walking to the Guard House
		put #goto Guard House
		waitfor YOU HAVE ARRIVED
		if ("%CLANITEM" = "YES") then goto CLAN_ITEM
		else goto THE_SACK
CLAN_ITEM_PAUSE:
pause 8
CLAN_ITEM:
		if ("%CLANITEM" = "NO") then goto THE_SACK
		put remove %CLAN.ITEM.NAME
		pause
		goto THE_SACK
THE_SACK:
pause
		matchre THE_SACK ^\.\.\.wait|^Sorry, you may only|What were you|I could not|Please rephrase
		matchre SACK_PRE ^You reach for your sack and retrieve the equipment 
		matchre CLAN_ITEM_PAUSE ^You'll need to not be wearing anything 
		matchre DEBT paid off your debt to society 
		put get $charactername sack
		matchwait
		goto GET_SACK

SACK_PRE:
	if ("%CLANITEM" = "YES") then put wear %CLAN.ITEM.NAME
	if ("%CLANITEM" = "YES") then put rub %CLAN.ITEM.NAME
	pause 0.5
	pause 0.5
SACK:
pause 0.5
		match OPEN_SACK That is closed.
		matchre GET_SACK_ITEM (\S+)(\.)
		matchre NO_MORE_ITEMS ^There is nothing in there|^I could not find
	put look in my sack
	matchwait
OPEN_SACK:
	put wear fer
	pause .5
	put open my sack
	pause
	goto SACK
GET_SACK_ITEM:
	pause
	if $1 = there then goto NO_MORE_ITEMS
	put get $1 from my sack
	pause
	if (("$1" = "backpack")||("$1" = "cauldron")) then
	{
		pause 0.5
	} else
	{
		put wear my $1;stow my $1
	}
	pause 0.5
	goto SACK
NO_MORE_ITEMS:
	put drop sack
	pause 2
	pause
echo
echo **** Returning to what you were doing ****
echo
	if ("$lefthand" != "Empty" && "$lefthandnoun" != "backpack" && "$lefthandnoun" != "cauldron") then put stow left
	if ("$righthand" != "Empty" && "$righthandnoun" != "backpack" && "$righthandnoun" != "cauldron") then put stow right
	pause 2

CHECKLOC:
	if ("%LOCATION" = "Crossing") then goto CROSSJAIL
	if ("%LOCATION" = "Theren") then goto THEREN.JAIL.LEAVE
	if ("%LOCATION" = "Riverhaven") then goto HAVENJAIL
	if ("%LOCATION" = "Leth Deriel") then goto LETHJAIL
CROSSJAIL:
	send #goto bank
	waitfor YOU HAVE ARRIVED
	put #script resume master
	pause 
	pause 0.5
	put #parse TAKING CARE OF BUSINESS
	put #parse TAKING CARE OF BUSINESS
	pause 2
	goto END
LETHJAIL:
	send #goto 18
	waitfor YOU HAVE ARRIVED
	send .travel cross
	waitfor YOU HAVE ARRIVED
	put #script resume master
	pause 
	pause 0.5
	put #parse TAKING CARE OF BUSINESS
	put #parse TAKING CARE OF BUSINESS
	pause 2
	goto END
HAVENJAIL:
	send #goto town
	waitfor YOU HAVE ARRIVED
	put #script resume master
	pause 
	pause 0.5
	put #parse TAKING CARE OF BUSINESS
	put #parse TAKING CARE OF BUSINESS
	pause 2
	goto END
	
THEREN.JAIL.LEAVE:
save THEREN.JAIL.END
goto THEREN.KEEP.ESCAPE

THEREN.JAIL.GET.FINE:
save TO.TELLER
goto THEREN.KEEP.ESCAPE

THEREN.KEEP.ESCAPE:
	put #goto 249
	waitfor YOU HAVE ARRIVED
	goto THEREN.JUMP
THEREN.JUMP:
	send jump moat
	pause 10
	goto THEREN.STUNNED.WAIT
THEREN.STUNNED.WAIT:
	pause 10
	if $stunned = 1 then goto THEREN.STUNNED.WAIT
	pause 0.5
	gosub STAND
	pause 0.5
	goto THEREN.MOAT.LEAVE
THEREN.MOAT.LEAVE:
	gosub move s
	pause 2
	goto %s

THEREN.KEEP.JAIL:
	put #goto 151
	waitfor YOU HAVE ARRIVED
	send search vine
	pause 2
	pause
	send go open
	pause 2
	pause
	gosub move w
	gosub move sw
	send pull chain
	pause 2
	pause
	send go crawl
	pause 2
	pause
	gosub STAND
	goto CLAN_ITEM
	
THEREN.JAIL.END:
	put #goto 251
	waitfor YOU HAVE ARRIVED
	send .travel haven
	waitfor YOU HAVE ARRIVED
	put #script resume master
	pause 
	pause 0.5
	put #parse TAKING CARE OF BUSINESS
	put #parse TAKING CARE OF BUSINESS
	pause 2
	goto END
	
END:
	pause
	pause 0.5
	put #script abort jail
	put #parse FREE FROM JAIL
	echo 
	echo *** FREE FROM JAIL!
	echo
	if ("%LOCATION" = "Riverhaven") then goto FREE.HAVEN
	if ("%LOCATION" = "Theren") then goto FREE.THEREN
	if ("%LOCATION" = "Leth") then goto FREE.LETH
	if ("%LOCATION" = "Crossing") then goto FREE.CROSSING
	goto %LAST
	
FREE.CROSSING:
goto GO.PAWN.STUFF.CROSS

FREE.LETH:
goto GO.PAWN.STUFF.LETH

FREE.HAVEN:
FREE.THEREN:
goto GO.PAWN.STUFF.HAVEN

ZONE2TO1:
	send #goto 1
	

