//---------------------------------------------------------------------------

#ifndef UFrmCadastroModeloH
#define UFrmCadastroModeloH
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
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TFrmCadastroModelo : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TDBEdit *dbeCodigo;
	TLabel *Label2;
	TDBEdit *dbeMontadora;
	TLabel *Label3;
	TDBEdit *dbeNome;
	TDBLookupComboBox *dblkMontadora;
	TDataSource *dtsMontadoraLK;
	TFDQuery *qryMontadoraLK;
	TIntegerField *qryMontadoraLKMON_COD;
	TStringField *qryMontadoraLKMON_NOM;
	TPopupMenu *ppmMontadora;
	TMenuItem *AtualizeMontadora1;
	void __fastcall EvAtualizeMontadoraClick(TObject *Sender);
	void __fastcall EvPesquisarAoSairExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmCadastroModelo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroModelo *FrmCadastroModelo;
//---------------------------------------------------------------------------
#endif
