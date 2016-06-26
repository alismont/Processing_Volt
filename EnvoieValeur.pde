
import processing.serial.*; // importe la librairie s�rie processing

import controlP5.*; // importe la librairie GUI controlP5

String str1 = "machaine"; 
String chaineEnvoi = ""; 




Serial  myPort; 
ControlP5 controlP5; // 
Textlabel myTextlabelA;
Textlabel myTextlabelB;
Button envoiButton; 
Textfield chaineText; 
int myColorBackground = color(0, 0, 0);
int knobValue = 100;
float f=10;
Knob myKnobA;
Chart myChart;

int jaune=color(255, 255, 0); 
int vert=color(0, 255, 0); 
int rouge=color(255, 0, 0); 
int bleu=color(0, 0, 255); 
int noir=color(0, 0, 0); 
int blanc=color(255, 255, 255); 
int bleuclair=color(0, 255, 255); 
int violet=color(255, 0, 255); 



PFont myFont;     // The display font
String inString;  // Input string from serial port
int lf = 10;      // ASCII linefeed 
String t=":";
String[] tag = new String[110];
int MEMOSYN=0;
String TramEcriture="";

import controlP5.*;

ControlP5 cp5, cp6, cp7, cp8, cp9, cp10, cp11, cp12;

String textValue = "";

int F8INDEX=11;

int N7INDEX=59; 

int F10INDEX=99;

int B3INDEX=215;

int TINDEX=6;

int TDNINDEX=6;
int TTINDEX=6;
String VARIABLE="";

// XXXXXXXXXXXXXXXXXXXXXX  Fonction SETUP XXXXXXXXXXXXXXXXXXXXXX 

void setup() { // fonction d'initialisation ex�cut�e 1 fois au d�marrage

  colorMode(RGB, 255, 255, 255); // fixe format couleur R G B pour fill, stroke, etc...
  fill(0, 0, 255); // couleur remplissage RGB
  stroke (0, 0, 0); // couleur pourtour RGB
  rectMode(CORNER); // origine rectangle : CORNER = coin sup gauche | CENTER : centre 
  imageMode(CORNER); // origine image : CORNER = coin sup gauche | CENTER : centre
  //strokeWeight(0); // largeur pourtour
  frameRate(30);// Images par seconde

  size(1000, 1057); // ouvre une fen�tre xpixels  x ypixels
  background(0, 0, 0); // couleur fond fenetre

  // --- initialisation des objets et fonctionnalit�s utilis�es --- 

  //------------- initialisation port s�rie ---- 
  println(Serial.list()); // affiche dans la console la liste des ports s�ries
  // V�rifier que le num�ro du port s�rie utilis� est le meme que celui utilis� avec  Serial.list()[index] 
  myPort = new Serial(this, Serial.list()[2], 115200); // Initialise une nouvelle instance du port S�rie
  //myPort = new Serial(this, "/dev/ttyUSB0", 115200); // Initialise une nouvelle instance du port S�rie
  myPort.bufferUntil('\n'); // attendre arriv�e d'un saut de ligne pour g�n�rer �v�nement s�rie

  //printArray(Serial.list());
  //myPort = new Serial(this, Serial.list()[2], 9600); 
  //myPort.bufferUntil(lf); 
  myPort.clear();

  PFont pfont = createFont("Georgia", 30, true); // use true/false for smooth/no-smooth
  ControlFont PFont = new ControlFont(pfont, 150);

  PFont font = createFont("arial", 20);

  cp5 = new ControlP5(this);

  cp5.addTextfield("cp5")
    .setPosition(400, 20)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp6 = new ControlP5(this);

  cp6.addTextfield("cp6")
    .setPosition(430, 50)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp7 = new ControlP5(this);

  cp7.addTextfield("cp7")
    .setPosition(460, 80)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp8 = new ControlP5(this);

  cp8.addTextfield("cp8")
    .setPosition(490, 110)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp9 = new ControlP5(this);

  cp9.addTextfield("cp9")
    .setPosition(720, 110)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp10 = new ControlP5(this);

  cp10.addTextfield("cp10")
    .setPosition(720, 140)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp11 = new ControlP5(this);

  cp11.addTextfield("cp11")
    .setPosition(720, 170)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  cp12 = new ControlP5(this);


  cp12.addTextfield("cp12")
    .setPosition(720, 200)
    .setSize(200, 20)
    .setFont(createFont("arial", 10))
    .setAutoClear(false)
    ;

  textFont(pfont);
} // fin fonction Setup

// XXXXXXXXXXXXXXXXXXXXXX Fonction Draw XXXXXXXXXXXXXXXXXXXX 

void  draw() { 

  if (inString != null) {
    String[] q = splitTokens(inString, "/");
    // println(inString);
    //println(q.length + " values found");  // Prints "4 values found"
    tag[0]=q[0];//
    tag[1]=q[1];//
    tag[2]=q[2];//
    tag[3]=q[3];//
    tag[4]=q[4];//

    tag[5]=q[5];
    tag[6]=q[6];
    tag[7]=q[7];
    tag[8]=q[8];
    tag[9]=q[9];

    tag[10]=q[10];
    tag[11]=q[11];
    tag[12]=q[12];
    tag[13]=q[13];
    tag[14]=q[14];
    tag[15]=q[15];
    tag[16]=q[16];
    tag[17]=q[17];
    tag[18]=q[18];
    tag[19]=q[19];

    tag[20]=q[20];
    tag[21]=q[21];
    tag[22]=q[22];
    tag[23]=q[23];
    tag[24]=q[24];
    tag[25]=q[25];
    tag[26]=q[26];
    tag[27]=q[27];
    tag[28]=q[28];
    tag[29]=q[29];

    tag[30]=q[30]; //INPUT
    tag[31]=q[31];
    tag[32]=q[32];
    tag[33]=q[33];
    tag[34]=q[34];
    tag[35]=q[35];
    tag[36]=q[36];
    tag[37]=q[37]; //INPUT
    tag[38]=q[38];
    tag[39]=q[39];
    tag[40]=q[40];
    tag[41]=q[41];
    tag[42]=q[42];
    tag[43]=q[43];
    tag[44]=q[44];
    tag[45]=q[45];
    tag[46]=q[46];
    tag[47]=q[47];
    tag[48]=q[48];
    tag[49]=q[49];
    tag[50]=q[50];
    tag[51]=q[51];
    tag[52]=q[52];
    tag[53]=q[53];
    tag[54]=q[54];
    tag[55]=q[55];
    tag[56]=q[56];
    tag[57]=q[57];
    tag[58]=q[58];
    tag[59]=q[59];
    tag[60]=q[60];
    tag[61]=q[61];
    tag[62]=q[62];
    tag[63]=q[63];
    tag[64]=q[64];
    tag[65]=q[65];
    tag[66]=q[66];
    tag[67]=q[67];
    tag[68]=q[68];
    tag[69]=q[69];
    tag[70]=q[70];
    tag[71]=q[71];
    tag[72]=q[72];
    tag[73]=q[73];
    tag[74]=q[74];
    tag[75]=q[75];
    tag[76]=q[76];
    tag[77]=q[77];
    tag[78]=q[78];
    tag[79]=q[79];
    tag[80]=q[80];
    tag[81]=q[81];
    tag[82]=q[82];
    tag[83]=q[83];
    tag[84]=q[84];
    tag[85]=q[85];
    tag[86]=q[86];
    tag[87]=q[87];
    tag[88]=q[88];
    tag[89]=q[89];
    tag[90]=q[90];
    tag[91]=q[91];
    tag[92]=q[92];
    tag[93]=q[93];

    tag[94]=q[94];
    tag[95]=q[95];
    tag[96]=q[96];
    tag[97]=q[97];
    tag[98]=q[98];
    tag[99]=q[99];
    tag[100]=q[100];
    tag[101]=q[101];
    tag[102]=q[102];
    tag[103]=q[103];
    tag[104]=q[104];
  }

  AffichageTags(tag);
} 

// XXXXXXXXXXXXXXXXXXXXXX Autres Fonctions XXXXXXXXXXXXXXXXXXXXXX 

void knob(int theValue) {
  myColorBackground = color(theValue);
  println("a knob event. setting background to "+theValue);
}
//=================================================================================================Affichage
void AffichageTags(String[] tags) {  // This function also does not return a value
  background(0);

  if (tags[0] != null) {
    //image(img, 0, 0); 
    fill(250, 226, 5);
    textSize(20);

    text("F8["+F8INDEX+"]="+tags[0], 26, 35);

    text("N7["+N7INDEX+"]="+tags[1], 26, 65);

    text("F10["+F10INDEX+"]="+tags[2], 26, 95);

    text("B3["+B3INDEX+"]="+tags[3], 26, 125);

    text("T["+TINDEX+"]="+tags[4], 226, 125);

    text(tags[5], 26, 185);
    text(tags[6], 26, 215);
    text(tags[7], 26, 245);
    text(tags[8], 26, 275);
    text(tags[9], 26, 305);

    text(tags[10], 26, 335);
    text(tags[11], 26, 365);
    text(tags[12], 26, 395);
    text(tags[13], 26, 425);
    text(tags[14], 26, 455);
    text(tags[15], 26, 485);
    text(tags[16], 26, 515);
    text(tags[17], 26, 545);
    text(tags[18], 26, 575);
    text(tags[19], 26, 605);

    text(tags[20], 120, 335);
    text(tags[21], 120, 365);
    text(tags[22], 120, 395);
    text(tags[23], 120, 425);
    text(tags[24], 120, 455);
    text(tags[25], 120, 485);
    text(tags[26], 120, 515);
    text(tags[27], 120, 545);
    text(tags[28], 120, 575);
    text(tags[29], 120, 605);

    text(tags[30], 26, 635); //INPUT
    text(tags[31], 26, 665); 
    text(tags[32], 26, 695); 
    text(tags[33], 26, 725); 
    text(tags[34], 26, 755); 
    text(tags[35], 26, 785); 
    text(tags[36], 26, 815);
    text(tags[37], 26, 845); //INPUT
    text(tags[38], 26, 875); 
    text(tags[39], 26, 905); 

    text(tags[40], 26, 935); 
    text(tags[41], 26, 965); 
    text(tags[42], 26, 995);

    text(tags[43], 120, 635);
    text(tags[44], 120, 665); //INPUT
    text(tags[45], 120, 695); 
    text(tags[46], 120, 725); 
    text(tags[47], 120, 755); 
    text(tags[48], 120, 785); 
    text(tags[49], 120, 815); 
    text(tags[50], 120, 845);
    text(tags[51], 120, 875);
    text(tags[52], 120, 905);

    text(tags[53], 220, 635); //OUTPUT B3/209
    text(tags[54], 220, 665); //210
    text(tags[55], 220, 695); //211
    text(tags[56], 220, 725); //212
    text(tags[57], 220, 755); //213
    text(tags[58], 220, 785); //214
    text(tags[59], 220, 815); //215
    text(tags[60], 220, 845); //216
    text(tags[61], 220, 875); //217
    text(tags[62], 220, 905); //218
    text(tags[63], 220, 935); //219
    text(tags[64], 220, 965); //220
    text(tags[65], 220, 995); //221
    text(tags[66], 350, 635); //222
    text(tags[67], 350, 665); //223
    text(tags[68], 350, 695); //224

    text(tags[69], 500, 635); //AI0
    text(tags[70], 500, 665); //AI0
    text(tags[71], 500, 695); //AI0
    text(tags[72], 500, 725); //AI0
    text(tags[73], 500, 755); //AI0
    text(tags[74], 500, 785); //AI0
    text(tags[75], 500, 815); //AI0
    text(tags[76], 500, 845); //AI0
    text(tags[77], 500, 875); //AI0
    text(tags[78], 500, 905); //AI0
    text(tags[79], 500, 935); //AI0
    text(tags[80], 500, 965); //AI0
    text(tags[81], 500, 995); //AI0
    text(tags[82], 650, 635); //AI0
    text(tags[83], 650, 665); //AI0
    text(tags[84], 650, 695); //AI0

    text(tags[85], 220, 335);
    text(tags[86], 220, 365);
    text(tags[87], 220, 395);
    text(tags[88], 220, 425);
    text(tags[89], 220, 455);
    text(tags[90], 220, 485);
    text(tags[91], 220, 515);
    text(tags[92], 220, 545);
    text(tags[93], 220, 575);

    text(tags[94], 450, 335);
    text(tags[95], 450, 365);
    text(tags[96], 450, 395);
    text(tags[97], 450, 425);
    text(tags[98], 450, 455);
    text("TDN["+TDNINDEX+"]="+tags[99], 226, 155);
    text("TT["+TTINDEX+"]="+tags[100], 226, 185);
    text(tags[101], 226, 220);
    text(tags[102], 226, 250);
    text("N7[90]: "+tags[103], 226, 280);
    text(tags[104], 500, 220);
  }
}


void serialEvent(Serial p) { 
  inString = p.readString();
  //print(inString);
} 


public void chaineText(String theText) { // fonction �v�nement Textfield de meme nom - d�clench� par return - re�oit la chaine

  //println("Ev�nement CheminText avec valeur = "+theText);

  chaineEnvoi=theText; // m�morise le contenu du champ

  //println("Le chemin est :"+chaineEnvoi);
} // fin ev�nement champ texte chemin fichier

void mousePressed() {
  //print("X:"+mouseX);
  //print("Y:"+mouseY);
  myPort.write("OKPROC/"); 
  print ("OKPROC");
}

void keyPressed() {
}


public void clear() {
  cp5.get(Textfield.class, "").clear();
}

void controlEvent(ControlEvent theEvent) {
  if (theEvent.isAssignableFrom(Textfield.class)) {
    if (theEvent.getName()=="cp5") {
      F8INDEX=int(theEvent.getStringValue());
      myPort.write("F8"+F8INDEX+'/'); 
      F8INDEX=int(theEvent.getStringValue());
      println(theEvent.getName());//+theEvent.getStringValue());
    }
    if (theEvent.isAssignableFrom(Textfield.class)) {
      if (theEvent.getName()=="cp6") {
        N7INDEX=int(theEvent.getStringValue());
        myPort.write("N7"+N7INDEX+'/'); 
        N7INDEX=int(theEvent.getStringValue());
        println(theEvent.getName());//+theEvent.getStringValue());
      }
      if (theEvent.isAssignableFrom(Textfield.class)) {
        if (theEvent.getName()=="cp7") {
          F10INDEX=int(theEvent.getStringValue());
          myPort.write("F10"+F10INDEX+'/'); 
          F10INDEX=int(theEvent.getStringValue());
          println(theEvent.getName());//+theEvent.getStringValue());
        }
        if (theEvent.isAssignableFrom(Textfield.class)) {
          if (theEvent.getName()=="cp8") {
            B3INDEX=int(theEvent.getStringValue());
            myPort.write("B3"+B3INDEX+'/'); 
            B3INDEX=int(theEvent.getStringValue());
            println(theEvent.getName());//+theEvent.getStringValue());
          }
        }
        if (theEvent.isAssignableFrom(Textfield.class)) {
          if (theEvent.getName()=="cp9") {
            TINDEX=int(theEvent.getStringValue());
            myPort.write("T"+TINDEX+'/'); 
            TINDEX=int(theEvent.getStringValue());
            println(theEvent.getName());//+theEvent.getStringValue());
          }
          if (theEvent.isAssignableFrom(Textfield.class)) {
            if (theEvent.getName()=="cp10") {
              TDNINDEX=int(theEvent.getStringValue());
              myPort.write("T"+TDNINDEX+'/'); 
              TDNINDEX=int(theEvent.getStringValue());
              println(theEvent.getName());//+theEvent.getStringValue());
            }
            if (theEvent.isAssignableFrom(Textfield.class)) {
              if (theEvent.getName()=="cp11") {
                TTINDEX=int(theEvent.getStringValue());
                myPort.write("TT"+TTINDEX+'/'); 
                TTINDEX=int(theEvent.getStringValue());
                println(theEvent.getName());//+theEvent.getStringValue());
              }
              if (theEvent.isAssignableFrom(Textfield.class)) {
                if (theEvent.getName()=="cp12") {
                  VARIABLE=theEvent.getStringValue();
                  myPort.write("VAR"+VARIABLE+'/'); 
                  //VARIABLE=int(theEvent.getStringValue());
                  println(theEvent.getName());//+theEvent.getStringValue());
                }
              }
            }
          }
        }
      }
    }
  }
}


public void input(String theText) {
  // automatically receives results from controller input
  println("a textfield event for controller 'input' : "+theText);
}