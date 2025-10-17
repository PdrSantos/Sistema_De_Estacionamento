//---------------------------------------------------------------------------

#ifndef UFrmCadastroTipoH
#define UFrmCadastroTipoH
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
#include <Vcl.ImgList.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TFrmCadastroTipo : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TDBEdit *dbeCodigo;
	TLabel *Label2;
	TDBEdit *dbeDescricao;
	void __fastcall EvPesquiseTipoExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmCadastroTipo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroTipo *FrmCadastroTipo;
//---------------------------------------------------------------------------
#endif
