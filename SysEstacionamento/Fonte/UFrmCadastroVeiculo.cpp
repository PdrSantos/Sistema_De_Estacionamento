//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroVeiculo.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroVeiculo *FrmCadastroVeiculo;
//---------------------------------------------------------------------------
__fastcall TFrmCadastroVeiculo::TFrmCadastroVeiculo(TComponent* Owner)
	: TFrmModeloCadastroCRUD(Owner)
{
	dtmEstacionamento->ConfigureLookUp(qryMontadoraLK);
	dtmEstacionamento->ConfigureLookUp(qryModeloLK);
	dtmEstacionamento->ConfigureLookUp(qryTipoLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizaMontadoraLKOnClick(TObject *Sender)

{
   dtmEstacionamento->AtualizeLookUp(qryMontadoraLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizeModeloLKOnClick(TObject *Sender)
{
	dtmEstacionamento->AtualizeLookUp(qryModeloLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvAtualizeTipoLKOnClick(TObject *Sender)
{
    dtmEstacionamento->AtualizeLookUp(qryTipoLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvFiltraModeloDataChange(TObject *Sender, TField *Field)

{
	dtmEstacionamento->LimpeModeloVeiculo();
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroVeiculo::EvPesquiseVeiculoExit(TObject *Sender)
{
	TDBEdit *vEdt = dynamic_cast<TDBEdit*>(Sender);
	if ((vEdt))
	{
		if (vEdt->Modified)
		{
			vEdt->Modified = false;
			int vValor = vEdt->Text.ToInt();
			if (!dtmEstacionamento->PesquiseVeiculo(vValor))
			{
				dtmEstacionamento->CrieNovoVeiculo(vValor);
            }
        }
    }
}
//---------------------------------------------------------------------------

