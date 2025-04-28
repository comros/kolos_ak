#################################################################
# Program ma policzyc i wydrukowac w oknie terminala (funkcja printf):
#
# na maks. 7 punktow
#
# - temat zadania 1
# Wypisz sume elementow tablicy gdzie elementy sa parzyste
#
# kontynuacja - na maks. 10 punktow:
#
# - dodatkowo - temat zadania 2
# Wypisz liczbe elementów mniejszych od zera
#
# Zadanie ratunkowe: wydrukowanie tekstu zawierajÄcego imie, nazwisko oraz nr_albumu
#                    przy pomocy jednego wywolania funkcji printf
# - na maks. 4 punkty: numer albumu ma stanowic wartosc zmiennej
# - na maks. 5 punktĂłw: zarowno numer albumu jak i imie/nazwisko sa wartosciami zmiennych
#
#################################################################

			.data

text_a:		.string "X = %d,  Y = %d\n"

tab:		.xxxx 6, 4, -3, 3, -5, 9, 7, 1, -2, 8, -3, 5, 9, -1, 2
count:		.long 15

sum:		.xxxx 0

text_b:		.string "Jan Niezbedny nr albumu %d\n"
text_c:		.string "%s nr albumu %d\n"
nr_albumu:	.long 12345
name:		.string "Jan Niezbedny"

#################################################################

		.text
		.global main

main:
		push %rbp

# nadaj wartosci poczatkowe
# dane mozna przechowywac gdziekolwiek (w rejestrach, w pamieci)

petla:

# usun bledy i odczytaj w prawidlowy sposob element tablicy

		mov tab(, %register_1, 2 ), %register_2

# zaktualizuj niezbedne zmienne
# sprawdz ewentualne dodatkowe warunki
# jesli spelnione to zaktualizuj dodatkowe zmienne

# zamknij petle

koniec:

# przekaz argumenty 
# wyswietl wyniki (printf)

		call printf

# koniec funkcji main

		pop %rbp
		xor %rax,%rax
		ret

#################################################################