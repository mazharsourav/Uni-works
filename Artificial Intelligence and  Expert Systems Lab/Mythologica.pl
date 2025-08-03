% mythologica
% --------------------------------------------
% Mythology, Religion & Folklore Knowledgebase
% By Mazharul Islam Sourav
% --------------------------------------------

% ========== Cultural Origins ==========
culture(christianity).
culture(islam).
culture(hinduism).
culture(buddhism).
culture(judaism).
culture(sikhism).
culture(greek).
culture(norse).
culture(egyptian).
culture(mesopotamian).
culture(roman).
culture(japanese).
culture(chinese).
culture(slavic).
culture(celtic).
culture(african).
culture(native_american).
culture(south_american).
culture(arabian).
culture(irish).
culture(himalayan).
culture(inca).
culture(aboriginal).
culture(african_mythology).
culture(african_folklore).
culture(english_folklore).
culture(indian_folklore).
culture(peruvian_folklore).
culture(hopi).
culture(lakota).
culture(navajo).
culture(various_tribes).

% ========== Entities ==========
% entity(Name, Culture, Type, Alignment)
% Type: deity, goddess, god, spirit, demon, angel, ghost, monster, hero, witch, yokai, trickster, fallen_angel, sorcerer, messenger, prophet
% Alignment: good, evil, neutral, complex

% Islam
entity(allah, islam, deity, good).
entity(jibreel, islam, angel, good).
entity(iblis, islam, demon, evil).
entity(jinn, islam, spirit, neutral).
entity(ifrit, islam, demon, evil).
entity(angel_mikael, islam, angel, good).

% Christianity
entity(god, christianity, deity, good).
entity(jesus, christianity, prophet, good).
entity(satan, christianity, demon, evil).
entity(michael, christianity, angel, good).
entity(lucifer, christianity, fallen_angel, evil).

% Hinduism
entity(shiva, hinduism, deity, complex).
entity(vishnu, hinduism, deity, good).
entity(brahma, hinduism, deity, good).
entity(kali, hinduism, goddess, complex).
entity(ganesha, hinduism, deity, good).

% Buddhism
entity(buddha, buddhism, prophet, good).
entity(mara, buddhism, demon, evil).
entity(yaksha, buddhism, spirit, neutral).

% Judaism
entity(yahweh, judaism, deity, good).
entity(metatron, judaism, angel, good).
entity(samael, judaism, angel, complex).

% Sikhism
entity(sikh_god, sikhism, deity, good).

% Greek
entity(zeus, greek, deity, neutral).
entity(hades, greek, deity, neutral).
entity(hera, greek, goddess, neutral).
entity(athena, greek, goddess, good).
entity(hermes, greek, messenger, neutral).
entity(apollo, greek, god, good).
entity(achilles, greek, hero, good).
entity(hercules, greek, hero, good).
entity(cerberus, greek, monster, neutral).
entity(medusa, greek, monster, evil).
entity(pegasus, greek, spirit, good).
entity(nemesis, greek, goddess, neutral).
entity(ares, greek, god, neutral).

% Norse
entity(odin, norse, deity, neutral).
entity(thor, norse, deity, good).
entity(loki, norse, trickster, evil).
entity(freya, norse, goddess, good).
entity(hel, norse, goddess, neutral).
entity(fenrir, norse, monster, evil).
entity(jormungandr, norse, monster, evil).
entity(sleipnir, norse, spirit, good).

% Egyptian
entity(ra, egyptian, deity, good).
entity(isis, egyptian, goddess, good).
entity(seth, egyptian, god, evil).
entity(osiris, egyptian, god, good).
entity(horus, egyptian, deity, good).

% Mesopotamian
entity(marduk, mesopotamian, deity, good).
entity(tiamat, mesopotamian, monster, evil).

% Roman
entity(mars, roman, god, good).
entity(venus, roman, goddess, good).

% Japanese
entity(amaterasu, japanese, goddess, good).
entity(tsukuyomi, japanese, god, neutral).
entity(susanoo, japanese, god, complex).
entity(kappa, japanese, yokai, neutral).
entity(tengu, japanese, yokai, neutral).
entity(onryo, japanese, ghost, evil).
entity(yurei, japanese, ghost, evil).
entity(kitsune, japanese, spirit, neutral).

% Chinese
entity(guan_yu, chinese, deity, good).
entity(nezha, chinese, deity, good).

% Slavic
entity(baba_yaga, slavic, witch, neutral).
entity(perun, slavic, deity, good).
entity(koschei, slavic, sorcerer, evil).

% Celtic
entity(cernunnos, celtic, deity, neutral).
entity(morrigan, celtic, goddess, complex).

% African
entity(anansi, african, trickster, neutral).
entity(ogun, african, deity, good).
entity(mami_wata, african, spirit, neutral).
entity(shango, african, deity, good).

% Native American
entity(kokopelli, native_american, spirit, good).
entity(wendigo, native_american, monster, evil).
entity(thunderbird, native_american, spirit, good).
entity(coyote, native_american, trickster, neutral).

% South American
entity(el_tunchi, south_american, spirit, evil).
entity(pachamama, south_american, deity, good).

% Folklore
entity(rajput_ghost, indian_folklore, ghost, evil).
entity(black_shuck, english_folklore, ghost, evil).

% Inca
entity(inti, inca, deity, good).
entity(viracocha, inca, deity, good).
entity(manco_capac, inca, hero, good).

% Aboriginal
entity(baiame, aboriginal, deity, good).
entity(daramulum, aboriginal, deity, good).
entity(bunyip, aboriginal_folklore, spirit, neutral).

% African Mythology/Folklore
entity(nyame, african_mythology, deity, good).
entity(anzu, african_mythology, deity, neutral).
entity(olodumare, african_mythology, deity, good).
entity(tokoloshe, african_folklore, spirit, evil).

% Peruvian Folklore
entity(el_tunchi, peruvian_folklore, spirit, evil).

% ========== Domains ==========
% domain(Entity, Domain)
domain(allah, creation).
domain(jibreel, revelation).
domain(iblis, deception).
domain(jinn, desert).
domain(ifrit, fire).
domain(angel_mikael, protection).
domain(god, heaven).
domain(jesus, salvation).
domain(satan, hell).
domain(michael, war).
domain(lucifer, pride).
domain(shiva, destruction).
domain(vishnu, preservation).
domain(brahma, creation).
domain(kali, time).
domain(ganesha, wisdom).
domain(buddha, enlightenment).
domain(mara, temptation).
domain(yaksha, nature).
domain(yahweh, covenant).
domain(metatron, intermediary).
domain(samael, death).
domain(sikh_god, universal).
domain(zeus, sky).
domain(hades, underworld).
domain(hera, marriage).
domain(athena, wisdom).
domain(hermes, travel).
domain(apollo, sun).
domain(achilles, war).
domain(odin, wisdom).
domain(thor, thunder).
domain(loki, chaos).
domain(freya, fertility).
domain(hel, death).
domain(ra, sun).
domain(isis, magic).
domain(seth, chaos).
domain(osiris, afterlife).
domain(horus, kingship).
domain(marduk, order).
domain(tiamat, chaos).
domain(mars, war).
domain(venus, love).
domain(amaterasu, sun).
domain(tsukuyomi, moon).
domain(susanoo, sea).
domain(guan_yu, war).
domain(nezha, protection).
domain(baba_yaga, forest).
domain(perun, thunder).
domain(koschei, death).
domain(cernunnos, nature).
domain(morrigan, fate).
domain(anansi, stories).
domain(ogun, war).
domain(kokopelli, fertility).
domain(wendigo, winter).
domain(el_tunchi, forest).
domain(pachamama, earth).
domain(rajput_ghost, haunting).
domain(black_shuck, haunting).
domain(hercules, strength).
domain(cerberus, underworld).
domain(medusa, curse).
domain(pegasus, sky).
domain(nemesis, vengeance).
domain(fenrir, destruction).
domain(jormungandr, ocean).
domain(sleipnir, travel).
domain(kappa, water).
domain(tengu, mountains).
domain(onryo, vengeance).
domain(yurei, unrest).
domain(kitsune, trickery).
domain(thunderbird, storm).
domain(coyote, trickery).
domain(mami_wata, water).
domain(shango, thunder).
domain(nyame, sky).
domain(anzu, storm).
domain(olodumare, creation).
domain(tokoloshe, mischief).
domain(inti, sun).
domain(viracocha, creation).
domain(manco_capac, civilization).
domain(baiame, sky_father).
domain(daramulum, creation).
domain(bunyip, swamp_beast).

% ========== Symbols ==========
% symbol(Entity, Symbol)
symbol(zeus, lightning_bolt).
symbol(hades, bident).
symbol(thor, hammer).
symbol(loki, serpent).
symbol(shiva, trident).
symbol(vishnu, discus).
symbol(kali, sword).
symbol(ganesha, elephant_head).
symbol(marduk, dragon).
symbol(tiamat, chaos_serpent).
symbol(ra, sun_disk).
symbol(isis, ankh).
symbol(baba_yaga, mortar_and_pestle).
symbol(anansi, spider).
symbol(wendigo, antlers).
symbol(hercules, club).
symbol(cerberus, three_heads).
symbol(medusa, snakes).
symbol(pegasus, wings).
symbol(nemesis, scales).
symbol(fenrir, wolf).
symbol(jormungandr, serpent).
symbol(sleipnir, horse).
symbol(kappa, turtle).
symbol(tengu, wings).
symbol(onryo, white_robe).
symbol(yurei, ghostly).
symbol(kitsune, fox).
symbol(thunderbird, wings).
symbol(coyote, coyote).
symbol(mami_wata, water_spirit).
symbol(shango, thunder).

% ========== Relationships ==========
% parent(Parent, Child)
parent(zeus, athena).
parent(zeus, apollo).
parent(zeus, hermes).
parent(zeus, hercules).
parent(odin, thor).
parent(odin, freya).
parent(odin, loki).
parent(odin, sleipnir).
parent(shiva, ganesha).
parent(shiva, murugan).
parent(osiris, horus).
parent(loki, fenrir).
parent(loki, jormungandr).
parent(inti, manco_capac).

% sibling(Sib1, Sib2)
sibling(athena, apollo).
sibling(hermes, apollo).
sibling(thor, freya).

% rival(Entity1, Entity2)
rival(zeus, hades).
rival(odin, loki).
rival(thor, loki).
rival(seth, osiris).
rival(loki, thor).
rival(satan, jesus).
rival(iblis, allah).
rival(hercules, medusa).
rival(medusa, hercules).
rival(fenrir, odin).
rival(jormungandr, thor).
rival(coyote, wendigo).

% associated_with(Entity, Feature)
associated_with(jinn, smokeless_fire).
associated_with(kali, destruction).
associated_with(hermes, winged_sandals).
associated_with(thor, lightning).
associated_with(baba_yaga, hut_on_chicken_legs).
associated_with(anansi, storytelling).
associated_with(ganesha, remover_of_obstacles).

% ========== Stories ==========
% appears_in(Entity, Work)
appears_in(zeus, illiad).
appears_in(hades, odyssey).
appears_in(odin, edda).
appears_in(loki, edda).
appears_in(shiva, puranas).
appears_in(ganesha, puranas).
appears_in(baba_yaga, russian_folk_tales).
appears_in(anansi, african_folklore).

% ========== Alignment Rules ==========
is_benevolent(Entity) :- entity(Entity, _, _, good).
is_malevolent(Entity) :- entity(Entity, _, _, evil).
is_neutral(Entity) :- entity(Entity, _, _, neutral).
is_complex(Entity) :- entity(Entity, _, _, complex).

% ========== Relationship Rules ==========

same_origin(E1, E2) :-
    entity(E1, Culture, _, _),
    entity(E2, Culture, _, _),
    E1 \= E2.

conflict(E1, E2) :- rival(E1, E2).
conflict(E1, E2) :- rival(E2, E1).
conflict(E1, E2) :- is_benevolent(E1), is_malevolent(E2).
conflict(E1, E2) :- is_malevolent(E1), is_benevolent(E2).

ancestor_of(Ancestor, Descendant) :-
    parent(Ancestor, Descendant).
ancestor_of(Ancestor, Descendant) :-
    parent(Ancestor, Intermediate),
    ancestor_of(Intermediate, Descendant).

shares_domain(E1, E2) :-
    domain(E1, Domain),
    domain(E2, Domain),
    E1 \= E2.

shares_symbol(E1, E2) :-
    symbol(E1, Symbol),
    symbol(E2, Symbol),
    E1 \= E2.

appears_together(E1, E2) :-
    appears_in(E1, Story),
    appears_in(E2, Story),
    E1 \= E2.

% ========== Inference Rules ==========

find_benevolent_entities(List) :-
    findall(E, is_benevolent(E), List).

find_malevolent_entities(List) :-
    findall(E, is_malevolent(E), List).

find_entities_by_domain(Domain, List) :-
    findall(E, domain(E, Domain), List).

find_equivalents(zeus, thor).
find_equivalents(thor, zeus).
find_equivalents(hades, shiva).
find_equivalents(shiva, hades).
find_equivalents(hera, freya).
find_equivalents(isis, kali).
find_equivalents(ganesha, hermes).
find_equivalents(loki, seth).

equivalent(X, Y) :- find_equivalents(X, Y).
equivalent(X, Y) :- find_equivalents(Y, X).
equivalent(X, Y) :-
    find_equivalents(X, Z),
    equivalent(Z, Y).

% ========== Explain Relation ==========
explain_relation(X, Y) :-
    entity(X, CX, TX, AX),
    entity(Y, CY, TY, AY),
    format('~w (Culture: ~w, Type: ~w, Alignment: ~w)~n', [X, CX, TX, AX]),
    format('~w (Culture: ~w, Type: ~w, Alignment: ~w)~n', [Y, CY, TY, AY]),
    ( shares_domain(X, Y), domain(X, Domain) -> format('Both share the domain: ~w~n', [Domain]) ; true ),
    ( shares_symbol(X, Y), symbol(X, Symbol) -> format('Both share the symbol: ~w~n', [Symbol]) ; true ),
    ( appears_together(X, Y) -> format('Both appear together in some stories.~n') ; true ),
    ( conflict(X, Y) -> format('They are in conflict.~n') ; true ).

% ========== Elemental Associations ==========
element(zeus, air).
element(hades, earth).
element(thor, thunder).
element(loki, fire).
element(shiva, fire).
element(vishnu, water).
element(kali, darkness).
element(ganesha, wisdom).
element(ra, sun).
element(isis, magic).
element(baba_yaga, forest).
element(anansi, spider).
element(wendigo, winter).

same_element(X, Y) :-
    element(X, E),
    element(Y, E),
    X \= Y.

elemental_relation(X, Y) :-
    same_element(X, Y).
elemental_relation(X, Y) :-
    element(X, E),
    element(Z, E),
    elemental_relation(Z, Y).

% ========== Utility Predicates ==========
supernatural(Entity) :-
    entity(Entity, _, Type, _),
    member(Type, [deity, goddess, god, spirit, demon, angel, ghost, monster, witch, yokai, trickster, fallen_angel, sorcerer, messenger, prophet]).

allegiance(Entity, Alignment) :-
    entity(Entity, _, _, Alignment).

is_dangerous(Entity) :-
    entity(Entity, _, Type, evil),
    member(Type, [monster, demon, ghost, witch, yokai, trickster, sorcerer]).


% Will be more better fact and rule in the near future inshallah.
