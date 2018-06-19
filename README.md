Zadanie



Tvojou ulohou je naprogramovat spravu a filtrovanie stromovej struktury.

Spravu mozes napisat v ruby on rails priamo a bude dostupna v sekcii /admin kde bude moznost spravovat kategorie v stromovej strukture (kazdy element ma parenta).

Druha cast zadania je vyhladavanie, ktore by malo by vo VueJS alebo AJAX + rails script (mozes si vybrat) a pripaja sa na backend rails cez API json.



Aplikacia musi byt pokryta testami (backend aj api) na urovni modelu, request a feature testami pomocou rspec.

Tj. napisane testy pre modely, request (pre API) ale aj feature pre CRUD v admine.



Aplikacia by mala pouzivat Bootstrap 4 a idealne pouzit nejake free template – pre admin. Stylovanie pre public cast (filtrovanie) nie je potrebne.



Zadanie musi byt implementovane v najnovsej verzii Ruby on Rails  a ruby. Pre JS je potrebne pouzivat coffee script a na css ssas.

Ako databazu pouzi PostgreSQL. Zdrojove kody budu verzionovane pomocou nastroja git.



Volitelne



- Contoroller testy

- Prihlasenie do adminu cez HTTP authenifikaciu (meno a heslo admin)

- Coverage na zistenie pokrytia testami



Popis fungovanie filtra:



Mame stromovu strukturu

    Prislusenstvo
    Rukavice
    Oblecenie
        Nohavice
        Tricka
    Topanky
        Tenisky
        Papuce



Filtrovanie ma fungovat nasledovne. Ak do textoveho policka vo formulari zadam text. Vypisu sa take prvky, ktore obsahuju text v nazve, alebo niektory z potomkov daneho elementu obsahuje text v nazve. Strukturu je potrebne vypisovat tak, aby bolo vidno ktory element patri pod ktory (zachovat zobrazenie stromovej struktury).



Priklad 1: do filtrovacieho policka pouzivatel zadal text "Nohavice".

Vystup:



    Oblecenie
        Nohavice

Oblecenie sa vypise z toho dovodu, ze obsahuje potomka, ktory vyhovuje filtru. Priklad 2: do filtrovacieho policka pouzivatel zadal text "ce". Vystup:

    Rukavice
    Oblecenie
        Nohavice
    Topanky
        Papuce



================================================
