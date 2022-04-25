!classDefinition: #HabitatDeAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #HabitatDeAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'HabitatDeAvispas class' category: 'AvispasYAbejasParte2'!
HabitatDeAvispas class
	instanceVariableNames: 'cantidadDePolillas cantidadDeHuevosDeAvispas cantidadDeOrugas firmasGeneticas'!

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 18:27:11'!
agregarHuevoDeAvispa
	cantidadDeHuevosDeAvispas  := cantidadDeHuevosDeAvispas + 1.! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 19:32:15'!
agregarHuevoDeAvispaConFirmaGenetica: firmaGenetica
	|huevosConFirmaGenetica|
	huevosConFirmaGenetica := firmasGeneticas at: firmaGenetica ifAbsent:[0].
	firmasGeneticas at: firmaGenetica put: huevosConFirmaGenetica + 1.
! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 18:33:17'!
agregarOruga
	cantidadDeOrugas  := cantidadDeOrugas + 1.! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 19:15:34'!
agregarPolilla
	cantidadDePolillas := cantidadDePolillas + 1.! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 20:53:31'!
cantidadDeHuevosDeAvispa
	|huevosDeTodasLasFirmasGeneticas|
	huevosDeTodasLasFirmasGeneticas := firmasGeneticas values. 
	^huevosDeTodasLasFirmasGeneticas sum: [ : contador | contador ] ifEmpty: [0].! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 20:52:41'!
cantidadDeHuevosDeAvispaConFirmaGenetica: firmaGenetica
	^firmasGeneticas at: firmaGenetica ifAbsent:[0].! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 18:33:36'!
cantidadDeOrugas
	^cantidadDeOrugas! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 18:47:16'!
cantidadDePolillas
	^cantidadDePolillas.! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 18:35:59'!
consumirOruga
	cantidadDeOrugas := cantidadDeOrugas - 1.! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 19:16:00'!
consumirPolilla
	cantidadDePolillas := cantidadDePolillas - 1.! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 20:52:41'!
eliminarHuevoDeAvispaConFirmaGenetica: firmaGenetica
	|cantidadDeHuevosDeAvispaConFirmaGenetica|
	cantidadDeHuevosDeAvispaConFirmaGenetica  := self cantidadDeHuevosDeAvispaConFirmaGenetica: firmaGenetica.
	cantidadDeHuevosDeAvispaConFirmaGenetica  >= 1 ifTrue: [ firmasGeneticas at: firmaGenetica put: cantidadDeHuevosDeAvispaConFirmaGenetica - 1.].! !

!HabitatDeAvispas class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 19:19:47'!
reiniciar
	cantidadDeHuevosDeAvispas  := 0.
	cantidadDeOrugas := 0.
	cantidadDePolillas := 0.
	firmasGeneticas := Dictionary new.! !


!HabitatDeAvispas class methodsFor: '--** private fileout/in **--' stamp: 'AR 4/24/2022 21:36:07'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDePolillas := 0.
	cantidadDeHuevosDeAvispas := 0.
	cantidadDeOrugas := 0.
	firmasGeneticas := ((Dictionary new)).! !


!classDefinition: #LaAvispaLara category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaLara
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaLara class' category: 'AvispasYAbejasParte2'!
LaAvispaLara class
	instanceVariableNames: 'habitat firmaGenetica'!

!LaAvispaLara class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 20:26:52'!
firmaGenetica
	^firmaGenetica.! !

!LaAvispaLara class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 21:03:01'!
intentarReproducirse
	(habitat cantidadDeHuevosDeAvispaConFirmaGenetica: LaAvispaOriana2 firmaGenetica) >=1 ifTrue: [
		habitat eliminarHuevoDeAvispaConFirmaGenetica: LaAvispaOriana2 firmaGenetica.
		habitat agregarHuevoDeAvispaConFirmaGenetica: firmaGenetica.
	]  ifFalse: [ 
		(habitat cantidadDeHuevosDeAvispaConFirmaGenetica: LaAvispaPolly firmaGenetica) >=1 ifTrue: [
			habitat eliminarHuevoDeAvispaConFirmaGenetica: LaAvispaPolly firmaGenetica.
			habitat agregarHuevoDeAvispaConFirmaGenetica: firmaGenetica.
		]
	].! !


!LaAvispaLara class methodsFor: '--** private fileout/in **--' stamp: 'AR 4/24/2022 21:36:07'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	habitat := HabitatDeAvispas.
	firmaGenetica := 'L'.! !


!classDefinition: #LaAvispaOriana2 category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaOriana2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOriana2 class' category: 'AvispasYAbejasParte2'!
LaAvispaOriana2 class
	instanceVariableNames: 'firmaGenetica habitat'!

!LaAvispaOriana2 class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 20:57:20'!
firmaGenetica
	^firmaGenetica! !

!LaAvispaOriana2 class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 21:04:02'!
intentarReproducirse
	(habitat cantidadDeOrugas >= 1) ifTrue: [
	habitat consumirOruga.
	habitat agregarHuevoDeAvispaConFirmaGenetica: firmaGenetica.
	].! !


!LaAvispaOriana2 class methodsFor: '--** private fileout/in **--' stamp: 'AR 4/24/2022 21:36:07'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	firmaGenetica := 'OR'.
	habitat := HabitatDeAvispas.! !


!classDefinition: #LaAvispaOrnella category: 'AvispasYAbejasParte2'!
LaAvispaOriana2 subclass: #LaAvispaOrnella
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaOrnella class' category: 'AvispasYAbejasParte2'!
LaAvispaOrnella class
	instanceVariableNames: ''!

!LaAvispaOrnella class methodsFor: '--** private fileout/in **--' stamp: 'AR 4/24/2022 21:36:07'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	firmaGenetica := 'OR'.
	habitat := HabitatDeAvispas.! !


!classDefinition: #LaAvispaPolly category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #LaAvispaPolly
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LaAvispaPolly class' category: 'AvispasYAbejasParte2'!
LaAvispaPolly class
	instanceVariableNames: 'firmaGenetica habitat'!

!LaAvispaPolly class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 19:52:15'!
firmaGenetica
	^firmaGenetica! !

!LaAvispaPolly class methodsFor: 'as yet unclassified' stamp: 'AR 4/24/2022 21:04:12'!
intentarReproducirse
	(habitat cantidadDePolillas >= 1) ifTrue: [
	habitat consumirPolilla.
	habitat agregarHuevoDeAvispaConFirmaGenetica: firmaGenetica.
	].! !


!LaAvispaPolly class methodsFor: '--** private fileout/in **--' stamp: 'AR 4/24/2022 21:36:07'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	firmaGenetica := 'P'.
	habitat := HabitatDeAvispas.! !


!classDefinition: #PruebasReproduccionDeAvispas category: 'AvispasYAbejasParte2'!
DenotativeObject subclass: #PruebasReproduccionDeAvispas
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'AvispasYAbejasParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasReproduccionDeAvispas class' category: 'AvispasYAbejasParte2'!
PruebasReproduccionDeAvispas class
	instanceVariableNames: 'firmaGenetica habitat'!

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'AR 4/24/2022 20:53:31'!
test01EnElInicioDeLosTiemposNoHayHuevos	
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 0! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'AR 4/24/2022 20:53:31'!
test02CuandoOrianaLaAvispaSeReproducePorPrimeraVezDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'AR 4/24/2022 20:53:31'!
test03CadaVezQueOrianaSeReproduceDejaUnHuevoMas
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 2.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'AR 4/24/2022 20:30:06'!
test04ParaDejarUnHuevoOrianaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'AR 4/24/2022 20:30:06'!
test05ParaDejarUnHuevoOrianaLaAvispaDecrementaEnUnoLaPoblacionDeOrugasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosOrugasMas.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Oriana' stamp: 'AR 4/24/2022 20:53:31'!
test06CuandoNoHayOrugasOrianaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'AR 4/24/2022 20:53:31'!
test07CuandoOrnellaLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'AR 4/24/2022 20:30:06'!
test08ParaDejarUnHuevoOrnellaLaAvispaReduceLaPoblacionDeUnaOrugaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaOrugaMas.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeOrugas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Ornella' stamp: 'AR 4/24/2022 20:53:31'!
test09CuandoNoHayOrugasOrnellaLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'AR 4/24/2022 20:53:31'!
test10CuandoPollyLaAvispaSeReproduceDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'AR 4/24/2022 20:30:06'!
test11ParaDejarUnHuevoPollyLaAvispaReduceLaPoblacionDeUnaPolillaANinguna
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaUnaPolillaMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'AR 4/24/2022 20:30:06'!
test12ParaDejarUnHuevoPollyLaAvispaDecrementaEnUnoLaPoblacionDePolillasDelHabitat
	self retrocederElHabitatAlInicioDeLosTiempos.
	self queElHabitatTengaDosPolillasMas.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDePolillas isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Polly' stamp: 'AR 4/24/2022 20:53:31'!
test13CuandoNoHayPolillasPollyLaAvispaNoPuedeDejarHuevos
	self retrocederElHabitatAlInicioDeLosTiempos.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self habitat cantidadDeHuevosDeAvispa isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:06'!
test14CuandoOrianaLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:15:02'!
test15CuandoOrianaLaAvispaAunNoSeReprodujoNoTieneHuevosConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	
	self laAvispaOriana intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:58'!
test16CuandoPollyLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaPolly intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 1.
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - firma genetica' stamp: 'JMB 4/21/2022 12:14:54'!
test17CuandoOrnellaLaAvispaSeReproduceDejaUnHuevoConLaMismaFirmaGeneticaQueOriana
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	
	self laAvispaOrnella intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella isEqualTo: 1.
	Assert 
		that: self cantidadDeHuevosConLaFirmaGeneticaDeOrnella  
		isEqualTo: self cantidadDeHuevosConLaFirmaGeneticaDeOriana! !


!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:27'!
test18CuandoLaraLaAvispaSeReproduceDejaUnHuevoConSuFirmaGenetica
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOrnella intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 1.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:22'!
test19CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAOtraAvispa
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaOriana intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeOriana isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:18'!
test20CuandoLaraLaAvispaSeReproduceLeSacaElHuevoAPolly
	self retrocederElHabitatAlInicioDeLosTiempos. 
	self hacerQueElHabitatTengaLosRecursosSuficientes.
	self laAvispaPolly intentarReproducirse.
	
	self laAvispaLara intentarReproducirse.
	
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDePolly isEqualTo: 0.! !

!PruebasReproduccionDeAvispas class methodsFor: 'tests - Lara la ladrona' stamp: 'JMB 4/21/2022 12:15:12'!
test21CuandoLaraLaAvispaNoTieneRecursosNoDejaUnHuevo
	self retrocederElHabitatAlInicioDeLosTiempos. 
		
	self laAvispaLara intentarReproducirse.
		
	Assert that: self cantidadDeHuevosConLaFirmaGeneticaDeLara isEqualTo: 0.! !


!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:00:17'!
cantidadDeHuevosConLaFirmaGeneticaDeLara
	^HabitatDeAvispas cantidadDeHuevosDeAvispaConFirmaGenetica: LaAvispaLara firmaGenetica.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:05:02'!
cantidadDeHuevosConLaFirmaGeneticaDeOriana
	^self habitat cantidadDeHuevosDeAvispaConFirmaGenetica: (LaAvispaOriana2 firmaGenetica).! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:11:40'!
cantidadDeHuevosConLaFirmaGeneticaDeOrnella
	^HabitatDeAvispas cantidadDeHuevosDeAvispaConFirmaGenetica: LaAvispaOrnella firmaGenetica.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:00:27'!
cantidadDeHuevosConLaFirmaGeneticaDePolly
	^self habitat cantidadDeHuevosDeAvispaConFirmaGenetica: (LaAvispaPolly firmaGenetica).! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 20:30:06'!
habitat
	^HabitatDeAvispas! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 19:14:55'!
hacerQueElHabitatTengaLosRecursosSuficientes
	HabitatDeAvispas agregarOruga.
	HabitatDeAvispas agregarOruga.
	HabitatDeAvispas agregarPolilla.
	HabitatDeAvispas agregarPolilla.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:00:17'!
laAvispaLara
	^LaAvispaLara .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:03:05'!
laAvispaOriana
	^LaAvispaOriana2
! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:07:07'!
laAvispaOrnella
	^LaAvispaOrnella.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 21:00:27'!
laAvispaPolly
	^LaAvispaPolly.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 20:30:06'!
queElHabitatTengaDosOrugasMas
	self habitat agregarOruga .	
	self habitat agregarOruga .! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 19:17:54'!
queElHabitatTengaDosPolillasMas
	HabitatDeAvispas agregarPolilla.
	HabitatDeAvispas agregarPolilla.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 18:32:51'!
queElHabitatTengaUnaOrugaMas
	HabitatDeAvispas agregarOruga.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 19:16:28'!
queElHabitatTengaUnaPolillaMas
	HabitatDeAvispas agregarPolilla.! !

!PruebasReproduccionDeAvispas class methodsFor: 'Para completar' stamp: 'AR 4/24/2022 18:28:32'!
retrocederElHabitatAlInicioDeLosTiempos
	HabitatDeAvispas reiniciar.! !


!PruebasReproduccionDeAvispas class methodsFor: '--** private fileout/in **--' stamp: 'AR 4/24/2022 21:36:07'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	firmaGenetica := 'OR'.
	habitat := nil.! !

HabitatDeAvispas initializeAfterFileIn!
LaAvispaLara initializeAfterFileIn!
LaAvispaOriana2 initializeAfterFileIn!
LaAvispaOrnella initializeAfterFileIn!
LaAvispaPolly initializeAfterFileIn!
PruebasReproduccionDeAvispas initializeAfterFileIn!