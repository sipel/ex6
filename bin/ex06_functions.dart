part of ex06;

bool palindrome(var texte){ 
  //http://stackoverflow.com/questions/13111321/compare-a-string-left-to-right-right-to-left-in-dart
  for (int i = 0; i < texte.length ~/ 2; i++) {
    if (texte[i] != texte[texte.length - i - 1]) return false;
  }
  return true;
} 

differenceDate(var date1, var date2){ 
  var reponse;
  reponse = date1.difference(date2);
  return reponse.inDays;
}

grade(var resultat){
  var letter = '';
  if (resultat >= 0){ 
    if (resultat >= 95){
      return letter = "A+"; 
    } else if (resultat>=91.5 && resultat<=94.99){
      return letter = "A";
    } else if (resultat>=88 && resultat<=91.49){
      return letter = "A-";
    } else if (resultat>=84.5 && resultat<=87.99){
      return letter = "B+";
    } else if (resultat>=81 && resultat<=84.49){
      return letter = "B";
    } else if (resultat>=77.5 && resultat<=80.99){
      return letter = "B-";
    } else if (resultat>=74 && resultat<=77.49){
      return letter = "C+";
    } else if (resultat>=70.5 && resultat<=73.99){
      return letter = "C";
    } else if (resultat>=67 && resultat<=70.49){
      return letter = "C-";
    } else if (resultat>=63.5 && resultat<=66.99){
      return letter = "D+";
    } else if (resultat>=60 && resultat<=63.49){
      return letter = "D";
    } else{
      return letter = "E";
    }
  }
  
}

sortListMoins8(liste){ 
  List listeMoins8 = liste.where((c) => c.length < 8).toList();
  return listeMoins8;
}
sortList8(liste){ 
  List liste8 = liste.where((c) => c.length == 8).toList();
  return liste8;
}
sortListPlus8(liste){ 
  List listePlus8 = liste.where((c) => c.length > 8).toList();
  return listePlus8;
}

clubJoueur(joueurClub){
    List team = new List();
  List player = new List();
  
  
  for (String equipe in joueurClub.values) { 
    if (!team.contains(equipe)) { 
      team.add(equipe); 
      player.add(new List()); 
    }
  }
  team.sort();
  
  
  for (String joueur in joueurClub.keys) { 
    int position = team.indexOf(joueurClub[joueur]);
    player.elementAt(position).add(joueur);
  }
  
  List teamPlayer = new List(); 
  for (int i = 0; i < team.length; i++) {
    teamPlayer.add(team.elementAt(i));
    for(int j = 0; j < player.elementAt(i).length; j++) {
      teamPlayer.add(player.elementAt(i).elementAt(j));
    }
  }
  List reponse = new List();
  reponse.add('liste des joueurs\n');
  reponse.add(player);
  reponse.add('\n liste des équipes:\n');
  reponse.add(team);
  reponse.add('\n la liste des équipes suivit de leurs joueurs:\n');
  reponse.add(teamPlayer);
  
  return reponse; 
}