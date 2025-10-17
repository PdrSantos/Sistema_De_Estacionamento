//---------------------------------------------------------------------------

#ifndef UFrmCadastroCondutorH
#define UFrmCadastroCondutorH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "UFrmModeloCadastroCRUD.h"
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ToolWin.hpp>
#include <Data.DB.hpp>
#include <System.Actions.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.DBActns.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TFrmCadastroCondutor : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TDBEdit *DBEdit1;
	TLabel *Label2;
	TDBEdit *DBEdit2;
	TLabel *Label3;
	TDBEdit *DBEdit3;
	TLabel *Label4;
	TDBEdit *DBEdit4;
	void __fastcall EvPesquiseCondutorExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmCadastroCondutor(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroCondutor *FrmCadastroCondutor;
//---------------------------------------------------------------------------
#endif
