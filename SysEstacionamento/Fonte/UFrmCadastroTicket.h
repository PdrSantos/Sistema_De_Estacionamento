//---------------------------------------------------------------------------

#ifndef UFrmCadastroTicketH
#define UFrmCadastroTicketH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "UFrmModeloCadastroCRUD.h"
#include <Data.DB.hpp>
#include <System.Actions.hpp>
#include <System.ImageList.hpp>
#include <Vcl.ActnList.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBActns.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.ToolWin.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.DBCtrls.hpp>
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
#include <Vcl.Buttons.hpp>
//---------------------------------------------------------------------------
class TFrmCadastroTicket : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
	TGroupBox *grbConducao;
	TGroupBox *GroupBox1;
	TDataSource *dtsTicket;
	TDBGrid *DBGrid1;
	TLabel *Label1;
	TDBEdit *dbeCodigo;
	TLabel *Label2;
	TDBEdit *dbeCondutor;
	TLabel *Label3;
	TDBEdit *dbeVeiculo;
	TDBLookupComboBox *dblkCondutor;
	TDataSource *dtsCondutorLK;
	TFDQuery *qryCondutorLK;
	TDBLookupComboBox *dblkVeiculo;
	TFDQuery *qryVeiculoLK;
	TDataSource *dtsVeiculoLK;
	TPopupMenu *ppmCondutor;
	TMenuItem *AtualizarCondutor1;
	TPopupMenu *ppmVeiculo;
	TMenuItem *AtualizeVeculo1;
	TBitBtn *btnHoraSaida;
	void __fastcall EvAtualizarLookupClick(TObject *Sender);
	void __fastcall EvAtualizarVeiculoLKClick(TObject *Sender);
	void __fastcall EvGravarConducaoEnter(TObject *Sender);
	void __fastcall EvAtribuitHoraCorrenteOnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmCadastroTicket(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroTicket *FrmCadastroTicket;
//---------------------------------------------------------------------------
#endif
