subclase_de(transporte,terrestre).
subclase_de(transporte,acuatico).
subclase_de(transporte,aereo).

instancia_de(terrestre,carro).
instancia_de(terrestre,tren).
instancia_de(terrestre,moto).
instancia_de(acuatico,barco).
instancia_de(aereo,avion).
instancia_de(aereo,helicoptero).
instancia_de(aereo,globo_aereostatico).

tiene_propiedad(carro,tiene,baul).
tiene_propiedad(carro,usa,gasolina).
tiene_propiedad(tren,usa,rieles).
tiene_propiedad(moto,usa,cadena).
tiene_propiedad(barco,puede,flotar).
tiene_propiedad(avion,puede,volar).
tiene_propiedad(avion,tiene,helices).
tiene_propiedad(globo_aereostatico,tiene,canasta).
tiene_propiedad(globo_aereostatico,usa,fuego).

%Transportes
transportes(A,B):-subclase_de(B,A).

%Tipos de Transportes
instancias(S,D):-instancia_de(D,S).

%Propiedades de Transportes
propiedades(A,B,C):-tiene_propiedad(A,B,C).

%Saber que transporte es
es_un(TRANSPORTE,TIPO,INSTANCIA):-instancia_de(TIPO,INSTANCIA), subclase_de(TRANSPORTE,TIPO).

