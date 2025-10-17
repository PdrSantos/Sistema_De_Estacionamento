//---------------------------------------------------------------------------

#ifndef UFrmModeloCadastroCRUDH
#define UFrmModeloCadastroCRUDH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.ToolWin.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Data.DB.hpp>
#include <System.Actions.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.DBActns.hpp>
//---------------------------------------------------------------------------
class TFrmModeloCadastroCRUD : public TForm
{
__published:	// IDE-managed Components
	TToolBar *tlbCadastroCRUD;
	TToolButton *btnInserir;
	TToolButton *ToolButton1;
	TToolButton *ToolButton2;
	TToolButton *ToolButton3;
	TToolButton *btnExcluir;
	TToolButton *ToolButton5;
	TToolButton *ToolButton6;
	TToolButton *ToolButton7;
	TToolButton *ToolButton8;
	TImageList *ImgAtiva;
	TImageList *ImgDesativado;
	TImageList *ImgQuente;
	TDataSource *dtsPrincipal;
	TActionList *aclCRUD;
	TDataSetInsert *actInserir;
	TDataSetDelete *actExcluir;
	TDataSetPost *actGravar;
	TDataSetCancel *actCancelar;
	TAction *actPesquisar;
	TAction *actFechar;
	void __fastcall EvFecharFormularioOnClose(TObject *Sender, TCloseAction &Action);
	void __fastcall EvSairFormularioClick(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TFrmModeloCadastroCRUD(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmModeloCadastroCRUD *FrmModeloCadastroCRUD;
//---------------------------------------------------------------------------
#endif
