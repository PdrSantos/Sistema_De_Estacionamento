//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroModelo.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroModelo *FrmCadastroModelo;
//---------------------------------------------------------------------------
__fastcall TFrmCadastroModelo::TFrmCadastroModelo(TComponent* Owner)
	: TFrmModeloCadastroCRUD(Owner)
{
	dtmEstacionamento->ConfigureLookUp(qryMontadoraLK);
}
//---------------------------------------------------------------------------
void __fastcall TFrmCadastroModelo::EvAtualizeMontadoraClick(TObject *Sender)
{
	dtmEstacionamento->AtualizeLookUp(qryMontadoraLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroModelo::EvPesquisarAoSairExit(TObject *Sender)
{
	TDBEdit *vAuxEdt = dynamic_cast<TDBEdit*>(Sender);
	if (vAuxEdt)
	{
		if  (vAuxEdt->Modified)
		{
			vAuxEdt->Modified = false;
			int vValor = vAuxEdt->Text.ToInt();
			if (!dtmEstacionamento->PesquiseModelo(vValor))
			{
				dtmEstacionamento->CrieNovoModelo(vValor);
            }
		}
	}
}
//---------------------------------------------------------------------------

