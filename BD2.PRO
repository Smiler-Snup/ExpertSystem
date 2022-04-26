domains
	BNO,RNO=integer
	CONDITIONS = BNO*
	H=RNO*
	CATEGORY = symbol
database
	yes(BNO)
	no(BNO)
	maybe(BNO)
predicates
	rule(RNO,CATEGORY,CATEGORY,CONDITIONS)
	cond(BNO,string)
	anticond(BNO,CONDITIONS)
	expertism()
	menu()
	process(integer)
	consultt()
	work(CONDITIONS,CONDITIONS,integer)
	showfreecond(CONDITIONS,CONDITIONS)
	clear()
	checkanticond(CONDITIONS,CONDITIONS)
	member(BNO,CONDITIONS)
	isanticond(BNO,CONDITIONS)
	takechoice(CONDITIONS,CONDITIONS,integer)
	checkanswer(BNO,integer)
	addanticond(BNO)
	addanticond(BNO,CONDITIONS)
	lookfor(CONDITIONS)
	sublist(CONDITIONS,CONDITIONS)
	questionContinue(CATEGORY)
	eqChoice(integer)
	
	isemptylist(CONDITIONS)
	append(CONDITIONS,CONDITIONS,CONDITIONS)
	oneElement(CONDITIONS)
	lookHelperMaybe(CONDITIONS,CONDITIONS)
	returnLists(BNO,integer,CONDITIONS,CONDITIONS,CONDITIONS,CONDITIONS)
clauses
	/*Plants - растения*/
	/*Деревья*/
	rule(1,"Plants","Tree",[100]).
	/*Кустарники*/
	rule(2,"Plants","Shrub",[200]).
	/*Трава*/
	rule(3,"Plants","Grass",[300]).
	/*Тис ягодный*/
	rule(4,"Tree","Yew.Berry",[1,4,6,9,11,13]). /*Сочный плод, Лес, Теневыносливое,Редкое, Мезофит*/
	/*Тополь черный*/
	rule(5,"Tree","Black.Poplar",[1,5,6,9,11,13])./*Сухой плод,Лес,Теневыносливое,Редкое,Мезофит*/
	/*Кореянка земляничниколистная*/
	rule(6,"Tree","Korean.Strawberry-leaved",[1,5,7,9,11,13])./*Cухой плод,Водоём,Теневыносливое,Редкое,Мезофит*/
	/*Ольха Черная*/
	rule(7,"Tree","Black.Alder",[1,5,8,9,12,14])./*Сухой плод,Болото,Теневыносливое,Лекарственное,Гигрофит*/
	/*Ива пурпурная*/
	rule(8,"Tree","Purple.Willow",[1,5,8,10,12,14])./*Сухой плод,Болото,Светолюбивое,Лекарственное,Гигрофит*/
	/*Ольха волосистая*/
	rule(9,"Tree","Hairy.Alder",[1,5,7,10,12,14])./*Сухой плод,Водоём,Светолюбивое,Лекарственное,Гигрофит*/
	/*Адансония пальчатая*/
	rule(10,"Tree","Adonsonia.Palata",[1,4,6,10,12,13])./*Сочный плод,Лес,Светолюбивое,Лекарственное,Мезофит*/
	/*Рябина гладковатая*/
	rule(11,"Tree","Rowan.Smooth",[1,4,8,10,11,13])./*Сочный плод,Болото,Светолюбивое,Редкое,Мезофит*/
	/*Крушина ольховидная*/
	rule(12,"Tree","Buckthorn.Alder",[1,4,8,9,12,13])./*Сочный плод,Болото,Теневыносливое,Лекарственное,Мезофит*/
	
	/*Кизильник блестящий*/
	rule(13,"Shrub","Cotoneaster.Brilliant",[2,4,6,9,11,13])./*Сочный плод, Лес, Теневыносливое,Редкое,Мезофит*/
	/*Малина обыкновенная*/
	rule(14,"Shrub","Raspberry.Ordinary",[2,4,6,9,12,13,15,16])./*Сочный плод,Лес,Теневыносливое,Лекарственное,Мезофит,Листья сложные, Лепестков=5*/
	/*Жимолость Палласа*/
	rule(15,"Shrub","Pallas.Honeysuckle",[2,4,8,9,11,13])./*Сочный плод,Болото,Теневыносливое,Редкое,Мезофит*/
	/*Ежевика Несская*/
	rule(16,"Shrub","Blackberries.Ness",[2,4,8,9,13,15])./*Сочный плод,Болото,Теневыносливое,Мезофит,Листья сложные*/
	/*Маакия амурская*/
	rule(17,"Shrub","Maakia.Amur",[2,5,6,9,11,13,15,16])./*Сухой плод,Лес,Теневыносливое,Редкое,Мезофит,Листья сложные, Лепестков=5*/
	/*Ольховник кустарниковый*/
	rule(18,"Shrub","Alder.Shrub",[2,5,7,10,12,14])./*Сухой плод,Водоём,Светолюбивое,Лекарственное,Гигрофит*/
	/*Курильский чай кустарниковый*/
	rule(19,"Shrub","Kuril.Bush.Tea",[2,5,6,9,14,15,16])./*Сухой плод,Лес,Теневыносливое,Гигрофит,Листья сложные,Лепестков=5*/
	/*Спирея иволистная*/
	rule(20,"Shrub","Willow-leaved.Spirea",[2,5,8,10,14,16])./*Сухой плод,Болото,Светолюбивое,Гигрофит,Лепестков=5*/
	/*Карагана гривастая*/
	rule(21,"Shrub","Karagana.Mane",[2,8,10,11,13,16])./*Болото,Светолюбивое,Редкое,Мезофит,Лепестков=5*/
	
	/*Иглица колючая*/
	rule(22,"Grass","Prickly.Needle",[3,4,6,10,11,13])./*Сочный плод,Лес,Светолюбивое,Редкое,Мезофит*/
	/*Дудник даурский*/
	rule(23,"Grass","Dudnik.Daursky",[3,5,6,10,11,13,15,16])./*Сухой плод,Лес,Светолюбивое,Редкое,Мезофит,Листья сложные,Лепестков=5*/
	/*Поручейник сизаровидный*/
	rule(24,"Grass","Sium.Sisaroideum",[3,5,7,10,11,13,15,16])./*Сухой плод,Водоём,Светолюбивое,Редкое,Мезофит,Листья сложные,Лепестков=5*/
	/*Горечавка сизая*/
	rule(25,"Grass","Gentiana.Glauca",[3,7,9,11,13])./*Водоём, Теневыносливое,Редкое,Мезофит*/
	/*Клопогон простой*/
	rule(26,"Grass","Cimicifuga.Simplex",[3,8,9,11,13,15,16])./*Болото,Теневыносливое,Редкое,Мезофит,Листья сложные,Лепестков=5*/
	/*Ромашка аптечная*/
	rule(27,"Grass","Matricaria.Recutita",[3,6,10,12,14,15,16])./*Лес,Светолюбивое,Лекарственное,Гигрофит,Листья сложные,Лепестков=5*/
	/*Синюха северная*/
	rule(28,"Grass","Polemonium.Boreale",[3,7,10,12,14,15,16])./*Водоем,Светолюбивое,Лекарственное,Гигрофит,Листья сложные,Лепестков=5*/
	/*Кровохлёбка лекарственная*/
	rule(29,"Grass","Sanguisorba.Officinalis",[3,8,9,12,13,15])./*Болото,Теневыносливое,Лекарственное,Мезофит,Листья сложные*/
	/*Жабрица густоцветковая*/
	rule(30,"Grass","Seseli.Condensatum",[3,8,10,11,14,15,16])./*Болото,Светолюбивое,Редкое,Гигрофит,Листья сложные,Лепестков=5*/

	cond(1,"Tree").
	cond(2,"Shrub").
	cond(3,"Grass").
	/*Сочный плод*/
	cond(4,"Juicy.Fruit").
	/*Сухой плод*/
	cond(5,"Dry.Fruit").
	/*Местообитание лес*/
	cond(6,"Habitat.Forest").
	/*Местообитание водоём*/
	cond(7,"Habitat.Reservoir").
	/*Местообитание болото*/
	cond(8,"Habitat.Swamp").
	/*Теневыносливое*/
	cond(9,"Shade.Tolerant").
	/*Светолюбивое*/
	cond(10,"Light.Loving").
	/*Редкое*/
	cond(11,"Rare").
	/*Лекарственное*/
	cond(12,"Medicinal").
	/*Отношение к влаге мезофит*/
	cond(13,"Relation.To.Moisture.Mesophyte").
	/*Отношение к влаге Гигрофит*/
	cond(14,"Relation.To.Moisture.Hygrophyte").
	/*Листья сложные*/
	cond(15,"Leaves.Complex").
	/*Число лепестков 5*/
	cond(16,"Leaves=5").
	
	anticond(1,[2,3]).
	anticond(2,[1,3]).
	anticond(3,[1,2]).
	anticond(4,[5]).
	anticond(5,[4]).
	anticond(6,[7,8]).
	anticond(7,[6,8]).
	anticond(8,[6,7]).
	anticond(9,[10]).
	anticond(10,[9]).
	anticond(13,[14]).
	anticond(14,[13]).
	
	expertism():-makewindow(1,7,7,"Прототип экспертной системы (1)",0,0,25,80),
	menu(),nl,write("Space->"),readchar(_),exit.
	
	menu():-write("1.Consult "),nl,write("2.Exit "),nl,
	write("Your choice (1 or 2)->"),nl,readint(Ch),process(Ch).
	
	process(1):-consultt(),clear().
	process(2):-removewindow,exit.
	
	consultt():-work([],[],0).
	
	work(List,Maybe,Count):-Count<3,!,showfreecond(List,Maybe),takechoice(List,Maybe,Count).
	work(List,Maybe,Count):-Count>3,questionContinue("Continue chooose conditions or look for Plants?(1-yes another_number-no)-->"),
		showfreecond(List,Maybe),takechoice(List,Maybe,Count).
	work(List,Maybe,Count):-oneElement(List),write("Plants with 'yes' conditions"),nl,lookfor(List),nl,lookHelperMaybe(List,Maybe),
		questionContinue("Continue chooose conditions?(1-yes another_number-no)-->"),showfreecond(List,Maybe),takechoice(List,Maybe,Count).
	work(_,_,_).
	
	questionContinue(String):-write(String),readint(Choice),eqChoice(Choice).
	
	eqChoice(1).
	
	lookHelperMaybe(List,Maybe):-append(List,Maybe,Result),write("Plants with 'maybe' conditions"),nl,isemptylist(Maybe),oneElement(Result),lookfor(Result),!.
	lookHelperMaybe(_,_).
	
	append([],L2,L2).
	append([Head|Tail],L2,[Head|Result]):-append(Tail,L2,Result).
	
	isemptylist([]):-write("The list of coniditions is empty"),nl,!,fail.
	isemptylist(_).
	
	oneElement(List):-rule(_,_,Name,Conds),sublist(List,Conds),!.
	oneElement(_):-write("Objects are absent"),nl,!,fail.
	
	lookfor([]):-write("The list of coniditions is empty"),nl,!.
	lookfor(List):-rule(_,_,Name,Conds),sublist(List,Conds),write("Found plant is "),write(Name),nl,fail.
	lookfor(_).
	
	sublist([],_).
	sublist([Head|Tail],Conds):-member(Head,Conds),sublist(Tail,Conds).
	
	takechoice(List,Maybe,Count):-write("Your choice-->"),readint(Number),cond(Number,_),write("1-yes 2-maybe-->"),readint(Degree),checkanswer(Number,Degree),NewCount=Count+1,
	returnLists(Number,Degree,List,Maybe,List2,Maybe2),work(List2,Maybe2,NewCount).
	takechoice(List,Maybe,Count):-write("Your choice is forbidden to add in base data"),nl,work(List,Maybe,Count).
	
	returnLists(Number,1,List,Maybe,[Number|List],Maybe).
	returnLists(Number,2,List,Maybe,List,[Number|Maybe]).
	
	checkanswer(Number,_):-yes(Number),!,fail.
	checkanswer(Number,_):-no(Number),!,fail.
	checkanswer(Number,_):-maybe(Number),!,fail.
	checkanswer(Number,1):-asserta(yes(Number)),addanticond(Number).
	checkanswer(Number,2):-asserta(maybe(Number)),addanticond(Number).
	
	addanticond(Number):-not(anticond(Number,_)).
	addanticond(Number):-anticond(Number,Conds),addanticond(Number,Conds).
	
	addanticond(_,[]).
	addanticond(Number,[Head|Tail]):-asserta(no(Head)),addanticond(Number,Tail).
	
	showfreecond(List,Maybe):-cond(Number,Name),not(member(Number,Maybe)),isanticond(Number,Maybe),not(member(Number,List)),isanticond(Number,List),write(Number),write("-->"),write(Name),nl,fail.
	showfreecond(_,_).

	isanticond(Number,_):-not(anticond(Number,_)),!.
	isanticond(Number,List):-anticond(Number,Conds),checkanticond(List,Conds).

	checkanticond([],_).
	checkanticond([Head|Tail],AntiCond):-not(member(Head,AntiCond)),checkanticond(Tail,AntiCond).

	member(X,[X|Tail]).
	member(X,[Head|Tail]):-member(X,Tail).
	
	clear():-retract(yes(_)),fail;retract(no(_)),fail;retract(maybe(_)),fail.
	clear().
goal
	expertism().