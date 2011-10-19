//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <jpeg.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TStringGrid *AntPlane;
        TLabel *LabelListOfActions;
        TLabel *LabelAntPlane;
        TGroupBox *StartingPointBox;
        TLabel *LabelStartingPointRow;
        TLabel *LabelStartingPointColumn;
        TEdit *StartingPointRow;
        TEdit *StartingPointColumn;
        TGroupBox *DestinationBox;
        TLabel *LabelDestinationRow;
        TLabel *LabelDestinationColumn;
        TEdit *DestinationPointRow;
        TEdit *DestinationPointColumn;
        TGroupBox *AntControlBox;
        TButton *StartButton;
        TButton *Button1;
        TMemo *ListOfActions;
        TButton *ClearListOfActionsButton;
        TImage *Image1;
        TLabel *Label1;
        TEdit *AchievedDestinationPoint;
        TLabel *Label2;
        TEdit *Dead;
        TEdit *Total;
        TLabel *Label3;
        TButton *ClearPlaneButton;
        TButton *ResetCountersButton;
        TLabel *NotationLabel;
        TButton *ClearPheromonesButton;
        TGroupBox *NotationBox;
        TGroupBox *PheromoneBox;
        TEdit *PheromoneValue;
        TLabel *Label4;
        TLabel *Label5;
        TButton *ShowPheromonesButton;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall StartButtonClick(TObject *Sender);
        void __fastcall ClearListOfActionsButtonClick(TObject *Sender);
        void __fastcall ClearPlaneButtonClick(TObject *Sender);
        void __fastcall ResetCountersButtonClick(TObject *Sender);
        void __fastcall ClearPheromonesButtonClick(TObject *Sender);
        void __fastcall ShowPheromonesButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
        int __fastcall RandomMove(int CurrentPointColumn, int CurrentPointRow);
        int __fastcall RandomPheromone();
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
