//---------------------------------------------------------------------------

#ifndef UFrmCadastroVeiculoH
#define UFrmCadastroVeiculoH
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
class TFrmCadastroVeiculo : public TFrmModeloCadastroCRUD
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TDBEdit *dbeCodigo;
	TLabel *Label2;
	TDBEdit *dbeMontadora;
	TLabel *Label3;
	TDBEdit *dbeModelo;
	TLabel *Label4;
	TDBEdit *dbeTipo;
	TLabel *Label5;
	TDBEdit *dbePlaca;
	TLabel *Label6;
	TDBEdit *dbeFabricacao;
	TDBLookupComboBox *dblkMontadora;
	TFDQuery *qryMontadoraLK;
	TDataSource *dtsMontadoraLK;
	TIntegerField *qryMontadoraLKMON_COD;
	TStringField *qryMontadoraLKMON_NOM;
	TDBLookupComboBox *dblkModelo;
	TDataSource *dtsModeloLK;
	TFDQuery *qryModeloLK;
	TDBLookupComboBox *dblkTipo;
	TDataSource *dtsTipoLK;
	TFDQuery *qryTipoLK;
	TIntegerField *qryTipoLKTIP_COD;
	TStringField *qryTipoLKTIP_DES;
	TPopupMenu *ppmMontadoraLK;
	TMenuItem *AtualizeMontadora1;
	TPopupMenu *ppmModeloLK;
	TMenuItem *AtualizeModelo1;
	TPopupMenu *ppmTipo;
	TMenuItem *AtualizeTipo1;
	void __fastcall EvAtualizaMontadoraLKOnClick(TObject *Sender);
	void __fastcall EvAtualizeModeloLKOnClick(TObject *Sender);
	void __fastcall EvAtualizeTipoLKOnClick(TObject *Sender);
	void __fastcall EvFiltraModeloDataChange(TObject *Sender, TField *Field);
	void __fastcall EvPesquiseVeiculoExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmCadastroVeiculo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmCadastroVeiculo *FrmCadastroVeiculo;
//---------------------------------------------------------------------------
#endif
