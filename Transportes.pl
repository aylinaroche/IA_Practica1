subclase_de(transporte,terrestre).
subclase_de(transporte,acuatico).
subclase_de(transporte,aereo).

instancia_de(terrestre,carro).
instancia_de(terrestre,tren).
instancia_de(terrestre,moto).
instancia_de(acuatico,barco).
instancia_de(acuatico,canoa).
instancia_de(aereo,avion).
instancia_de(aereo,helicoptero).
instancia_de(aereo,globo_aereostatico).

tiene_propiedad(carro,tiene,baul).
tiene_propiedad(carro,usa,combustible).
tiene_propiedad(carro,tiene,llantas).
tiene_propiedad(tren,usa,rieles).
tiene_propiedad(tren,tiene,llantas).
tiene_propiedad(moto,usa,cadena).
tiene_propiedad(moto,usa,combustible).
tiene_propiedad(moto,tiene,llantas).
tiene_propiedad(barco,puede,flotar).
tiene_propiedad(canoa,puede,flotar).
tiene_propiedad(avion,puede,volar).
tiene_propiedad(avion,tiene,helices).
tiene_propiedad(avion,usa,combustible).
tiene_propiedad(helicoptero,tiene,helices).
tiene_propiedad(helicoptero,puede,volar).
tiene_propiedad(globo_aereostatico,tiene,canasta).
tiene_propiedad(globo_aereostatico,usa,fuego).
tiene_propiedad(globo_aereostatico,puede,volar).

partes_instancia(carro,ventanas).
partes_instancia(carro,puertas).
partes_instancia(carro,asientos).
partes_instancia(carro,volante).
partes_instancia(tren,ventanas).
partes_instancia(tren,puertas).
partes_instancia(tren,asientos).
partes_instancia(moto,volante).
partes_instancia(moto,asientos).
partes_instancia(barco,ventanas).
partes_instancia(barco,puertas).
partes_instancia(barco,asientos).
partes_instancia(barco,volante).
partes_instancia(canoa,remos).
partes_instancia(canoa,asientos).
partes_instancia(avion,ventanas).
partes_instancia(avion,puertas).
partes_instancia(avion,asientos).
partes_instancia(avion,volante).
partes_instancia(helicoptero,ventanas).
partes_instancia(helicoptero,puertas).
partes_instancia(helicoptero,asientos).
partes_instancia(helicoptero,volante).
partes_instancia(globo_aereostatico,puertas).
<<<<<<< HEAD
=======

otra_instancia(hatchback,carro).
otra_instancia(sedan,carro).
otra_instancia(suv,carro).
otra_instancia(metro,tren).
otra_instancia(tren_electrico,tren).
otra_instancia(cuatrimoto,moto).
otra_instancia(avion_carga, avion).
otra_instancia(yate,barco).


>>>>>>> 0a2cfa45748bafa6663f33d6243d58b2ad6836c5

%Transportes
transportes(A,B):-subclase_de(B,A).

%Tipos de Transportes
instancias(S,D):-instancia_de(D,S).

%Propiedades de Transportes
propiedades(A,B,C):-tiene_propiedad(A,B,C).

%Partes internas
partes_transporte(A,B):-partes_instancia(A,B).

%Saber que transporte es
es_un(TRANSPORTE,TIPO,INSTANCIA):-instancia_de(TIPO,INSTANCIA), subclase_de(TRANSPORTE,TIPO).

<<<<<<< HEAD
%Segun partes ver el transporte
es_parte_de(TIPO,PARTE):-partes_instancia(TIPO,PARTE), instancia_de(TRANSPORTE,TIPO).

%Los que no tienen esas partes
no_es_parte_de(TIPO,PARTE):- \+ partes_instancia(TIPO,PARTE).

%Son del mismo tipo de transporte?
mismo_tipo(A,B) :- instancia_de(C,A), instancia_de(C,B), A \== B.  

%Todos los datos de un transporte
%atributos(TIPO,PARTES,B,C,0):-!,partes_transporte(TIPO,PARTES),  propiedades(TIPO,B,C).
%Cantidad de transportes por tipo de transporte
%tipos_transporte(TIPO,N):-instancias(Y,TIPO),write(Y).


=======
%Saber todos los objetos padres de objeto hijo
es_un(TRANSPORTE,TIPO,INSTANCIA,OTRA):-otra_instancia(OTRA,INSTANCIA), instancia_de(TIPO,INSTANCIA), subclase_de(TRANSPORTE,TIPO).

%Desde el objeto de menor jerarquia hasta el el objeto de mayor jerarquia

es(D,E,0):-otra_instancia(E,D).
es(D,E,PR):-otra_instancia(E,D1),
    sub(D,D1,PR).

sub(C1,C2,0):-instancia_de(C1,C2).
sub(C1,C2,PR):-instancia_de(C3,C2),
    sub2(C3,C1,PR).

sub2(C1,C2,1):-subclase_de(C2,C1).
sub2(C1,C2,N):-subclase_de(C3,C1),
    sub2(C3,C2,M),
    N is M+1.
>>>>>>> 0a2cfa45748bafa6663f33d6243d58b2ad6836c5
