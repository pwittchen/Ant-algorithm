//---------------------------------------------------------------------------

#include <vcl.h>
#include <iostream.h>
#include <cmath.h>
#include <ctime.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

int AntPlane[10][10];       // coordinates of the ant's position
float AntPheromone[10][10]; // array of pheromones on the cities

int CurrentAnt;

float Random() 
{ 
    return ( rand() / float(RAND_MAX) );
}

// random experiment with probability determined by the table  given in the array
int RandomResult(const float * aProbs, int n)
{
   float fRand = Random();

   float fAccum = 0.0f;
   for (int i = 0; i < n; ++i)
   {
      // checking whether random value is in the probability range (distribution)
      if (fAccum <= fRand && fRand < fAccum + aProbs[i])
         return i;
      fAccum += aProbs[i];
   }

   // error
   return -1;
}

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
        srand( time(NULL) );

        for(int i = 1; i < 10; i++)
        {
                Form1->AntPlane->Cells[i][0] = i; // [column][row]
                Form1->AntPlane->Cells[0][i] = i;
        }

        int k;
        for(int j = 0; j < 10; j++)
        {
                for(k = 0; k < 10; k++)
                        AntPheromone[j][k] = 1;
        }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
        ShowMessage("Ant Algorithm\nauthor: Piotr Wittchen\npiotr.wittchen@gmail.com\nMacrofaculty (AEI), semester: V, group: 1, Subgroup: A, Section: 8\nArtificial Intelligence\nThe Silesian University of Technology");
}

int __fastcall TForm1::RandomMove(int CurrentPointColumn, int CurrentPointRow)
{
        float Move1 = (AntPheromone[CurrentPointColumn + 1][CurrentPointRow])/(AntPheromone[CurrentPointColumn + 1][CurrentPointRow] + AntPheromone[CurrentPointColumn][CurrentPointRow + 1] + AntPheromone[CurrentPointColumn][CurrentPointRow - 1]);
        float Move2 = (AntPheromone[CurrentPointColumn][CurrentPointRow + 1])/(AntPheromone[CurrentPointColumn + 1][CurrentPointRow] + AntPheromone[CurrentPointColumn][CurrentPointRow + 1] + AntPheromone[CurrentPointColumn][CurrentPointRow - 1]);
        float Move3 = (AntPheromone[CurrentPointColumn][CurrentPointRow - 1])/(AntPheromone[CurrentPointColumn + 1][CurrentPointRow] + AntPheromone[CurrentPointColumn][CurrentPointRow + 1] + AntPheromone[CurrentPointColumn][CurrentPointRow - 1]);
        float aProbs[3] = {Move1, Move2, Move3};
        return RandomResult(aProbs, 3);
}

int __fastcall TForm1::RandomPheromone()
{
        return ( rand() % 100 );
}

//---------------------------------------------------------------------------
void __fastcall TForm1::StartButtonClick(TObject *Sender)
{
        int CurrentPointRow;
        int CurrentPointColumn;
        int DestinationPointRow;
        int DestinationPointColumn;
        float ConcreteAntPheromone;
        int AntAchievedDestination;
        int AntDead;
        int AntTotal;
        int RandomMove;
        float PheromoneValue;

        CurrentAnt++;

        CurrentPointRow = StrToInt(Form1->StartingPointRow->Text);
        CurrentPointColumn = StrToInt(Form1->StartingPointColumn->Text);

        DestinationPointRow = StrToInt(Form1->DestinationPointRow->Text);
        DestinationPointColumn = StrToInt(Form1->DestinationPointColumn->Text);

        Form1->AntPlane->Cells[CurrentPointColumn][CurrentPointRow] = "ant " + IntToStr(CurrentAnt);
        Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Starting point is set to: [" +IntToStr(CurrentPointRow) + "][" + IntToStr(CurrentPointColumn) + "]");
        Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Destination point is set to: [" +IntToStr(DestinationPointRow) + "][" + IntToStr(DestinationPointColumn) + "]");

        ConcreteAntPheromone = Form1->RandomPheromone();

        Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) +", Pheromone is set to: " + FloatToStr(ConcreteAntPheromone));

        do
        {
                RandomMove = Form1->RandomMove(CurrentPointColumn, CurrentPointRow);
                PheromoneValue = StrToFloat(Form1->PheromoneValue->Text); // pheromone to be left

                if(PheromoneValue < 0)
                        PheromoneValue = 1.0;

                if(RandomMove == 0) // move right
                {
                        if(CurrentPointColumn < 9)
                        {
                                ++CurrentPointColumn;
                                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Moved to: [" +IntToStr(CurrentPointColumn) + "][" + IntToStr(CurrentPointRow) + "] (right)");
                                Form1->AntPlane->Cells[CurrentPointColumn][CurrentPointRow] = "ant " + IntToStr(CurrentAnt);

                                if(ConcreteAntPheromone >= PheromoneValue)
                                {
                                        AntPheromone[CurrentPointColumn][CurrentPointRow] += PheromoneValue;
                                        ConcreteAntPheromone -= PheromoneValue;
                                        Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Left " + FloatToStr(PheromoneValue) + " unit(s) of pheromone on the route, current value of ant's pheromone is: " + FloatToStr(ConcreteAntPheromone));
                                }
                        }
                }

                if(RandomMove == 1) // move down
                {
                        if(CurrentPointRow < 9)
                        {
                                ++CurrentPointRow;
                                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Moved to: [" +IntToStr(CurrentPointColumn) + "][" + IntToStr(CurrentPointRow) + "] (down)");
                                Form1->AntPlane->Cells[CurrentPointColumn][CurrentPointRow] = "ant " + IntToStr(CurrentAnt);

                                if(ConcreteAntPheromone >= PheromoneValue)
                                {
                                        AntPheromone[CurrentPointColumn][CurrentPointRow] += PheromoneValue;
                                        ConcreteAntPheromone -= PheromoneValue;
                                        Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Left " + FloatToStr(PheromoneValue) +" unit(s) of pheromone on the route, current value of ant's pheromone is: " + FloatToStr(ConcreteAntPheromone));
                                }
                        }
                }


                if(RandomMove == 2) // move up
                {
                        if(CurrentPointRow > 1)
                        {
                                --CurrentPointRow;
                                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Moved to: [" +IntToStr(CurrentPointColumn) + "][" + IntToStr(CurrentPointRow) + "] (up)");
                                Form1->AntPlane->Cells[CurrentPointColumn][CurrentPointRow] = "ant " + IntToStr(CurrentAnt);

                                if(ConcreteAntPheromone >= PheromoneValue)
                                {
                                        AntPheromone[CurrentPointColumn][CurrentPointRow] += PheromoneValue;
                                        ConcreteAntPheromone -= PheromoneValue;
                                        Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Left " + FloatToStr(PheromoneValue) + " unit(s) of pheromone on the route, current value of ant's pheromone is: " + FloatToStr(ConcreteAntPheromone));
                                }
                        }
                }

        } while( CurrentPointRow != DestinationPointRow && CurrentPointColumn != DestinationPointColumn );

        if( ((CurrentPointRow + 1) == DestinationPointRow && CurrentPointColumn == DestinationPointColumn) )
        {
                ++CurrentPointRow;
                Form1->AntPlane->Cells[DestinationPointColumn][DestinationPointRow] = "ant " + IntToStr(CurrentAnt);
                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Moved to: [" +IntToStr(CurrentPointColumn) + "][" + IntToStr(CurrentPointRow) + "] (down)");
                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Achieved destination point");
                AntAchievedDestination = StrToInt(Form1->AchievedDestinationPoint->Text) + 1;
                Form1->AchievedDestinationPoint->Text = IntToStr(AntAchievedDestination);
                AntTotal = StrToInt(Form1->Total->Text) + 1;
                Form1->Total->Text = IntToStr(AntTotal);
        }

        else if( ((CurrentPointColumn + 1) == DestinationPointColumn && CurrentPointRow == DestinationPointRow) )
        {
                ++CurrentPointColumn;
                Form1->AntPlane->Cells[DestinationPointColumn][DestinationPointRow] = "ant " + IntToStr(CurrentAnt);
                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Moved to: [" +IntToStr(CurrentPointColumn) + "][" + IntToStr(CurrentPointRow) + "] (right)");
                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Achieved destination point");
                AntAchievedDestination = StrToInt(Form1->AchievedDestinationPoint->Text) + 1;
                Form1->AchievedDestinationPoint->Text = IntToStr(AntAchievedDestination);
                AntTotal = StrToInt(Form1->Total->Text) + 1;
                Form1->Total->Text = IntToStr(AntTotal);
        }

        else
        {
                Form1->ListOfActions->Lines->Add("Ant: " + IntToStr(CurrentAnt) + ", Is dead");
                AntDead = StrToInt(Form1->Dead->Text) + 1;
                Form1->Dead->Text = IntToStr(AntDead);
                AntTotal = StrToInt(Form1->Total->Text) + 1;
                Form1->Total->Text = IntToStr(AntTotal);
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ClearListOfActionsButtonClick(TObject *Sender)
{
        Form1->ListOfActions->Clear();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::ClearPlaneButtonClick(TObject *Sender)
{
        int j;
        for(int i = 1; i < 10; i++)
        {
                for(j = 1; j < 10; j++)
                        Form1->AntPlane->Cells[i][j] = "";
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ResetCountersButtonClick(TObject *Sender)
{
        Form1->AchievedDestinationPoint->Text = "0";
        Form1->Dead->Text = "0";
        Form1->Total->Text = "0";
        CurrentAnt = 0;
        Form1->ListOfActions->Lines->Add("Counters are set to 0");
        Form1->ListOfActions->Lines->Add("Next ant identifier is set to 1");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ClearPheromonesButtonClick(TObject *Sender)
{
        int k;
        for(int j = 0; j < 10; j++)
        {
                for(k = 0; k < 10; k++)
                        AntPheromone[j][k] = 1;
        }

        Form1->ListOfActions->Lines->Add("Clearing pheromones");
        Form1->ListOfActions->Lines->Add("Pheromones of all cities are set to: 1");
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ShowPheromonesButtonClick(TObject *Sender)
{
        Form1->ClearPlaneButtonClick(Form1);

        int j;
        for(int i = 1; i < 10; i++)
        {
                for(j = 1; j < 10; j++)
                        Form1->AntPlane->Cells[i][j] = AntPheromone[i][j];
        }
}
//---------------------------------------------------------------------------

