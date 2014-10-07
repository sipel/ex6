library ex06;

part 'ex06_functions.dart';

void main() {
  ex06_1();
  ex06_2();
  ex06_3();
  ex06_4();
  ex06_5();
}
void ex06_1(){ //Question 1: Determine if a given string is a palindrome
  print('Question 1');
  var texte1 = 'radar';
  var texte2 = 'maison';
  bool reponse;
  reponse = palindrome(texte1);
  print("${texte1} est un palindrome : ${reponse}");
  reponse = palindrome(texte2);
  print("${texte2} est un palindrome : ${reponse}");
  print(''); // Espacement entre les exercices
}

void ex06_2(){ // Question 2: Number of days between two dates
  print('Question 2');
  DateTime jours1 = DateTime.parse('2014-12-25');
  DateTime jours2 = DateTime.parse('2014-10-31');
     num jour = differenceDate(jours1,jours2);
  print("La différence entre le $jours1 et le $jours2 est de $jour jours");
  print(''); // Espacement entre les exercices
}

void ex06_3(){ // Question 3: Convert number grades to letter grades by using a standard.
  print('Question 3');
  var resultat1 = 99;
  var resultat2 = 83;
  var resultat3 = 59.99;
  var resultat4 = 61;
  var reponse;
  print('Voici une liste des résultats obtenus ainsi que leur valeur en lettre:');
  reponse = grade(resultat1);
  print('$resultat1 = $reponse');
  reponse = grade(resultat2);
  print('$resultat2 = $reponse');
  reponse = grade(resultat3);
  print('$resultat3 = $reponse');
  reponse = grade(resultat4);
  print('$resultat4 = $reponse');
  print(''); // Espacement entre les exercices
}

void ex06_4(){ 
  /*Question 4: Given a list of names, make three lists, first with names shorter than 8 letters,
  second with names longer than 8 letters, and third with names that are 8 letters long.*/
  print('Question 4');
  List liste = ['Cremerie','eclair','rancune','epicarpe','symbole','biscuits', 'geocentrique', 'gentilhomme'];
  List reponse = [];
  print('la liste de mot a reclasser est : $liste');
  print('La liste de mots ayant moins de 8 lettres :');
  reponse = sortListMoins8(liste);
  print('${reponse}');
  reponse = sortList8(liste);
  print('La liste de mots conportant exactement 8 lettres');
  print('${reponse}');
  reponse = sortListPlus8(liste);
  print('La liste de mot ayant plus de 8 lettres');
  print('${reponse}');
  print(''); // Espacement entre les exercices
}

void ex06_5(){
  /*Question 5: Prepare two lists, one with the names of players, and the other with the names of clubs.
Make the third list with clubs ordered by their names, where each club is followed by its players. */
  print('Question 5');
  Map joueurClub = {'Bradley Wright-Philips':'New York Red Bull', 'Dom Dwyer':'Kansas City Sporting','Patrice Bernier':'Montreal Impact','Thierry Henry':'New York Red Bull',
                'Kevin Ellis':'Kansas City Sporting', 'Maxime Crepeau':'Montreal Impact', 'Landon Donovan':'Los Angeles Galaxy','Robbie Keane':'Los Angeles Galaxy'};
  
  var reponse = clubJoueur(joueurClub);
  print('${reponse}');
}
