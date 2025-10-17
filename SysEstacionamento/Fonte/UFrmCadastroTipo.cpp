//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroTipo.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroTipo *FrmCadastroTipo;
//---------------------------------------------------------------------------
__fastcall TFrmCadastroTipo::TFrmCadastroTipo(TComponent* Owner)
	: TFrmModeloCadastroCRUD(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFrmCadastroTipo::EvPesquiseTipoExit(TObject *Sender)
{
	TDBEdit *vEdt = dynamic_cast<TDBEdit*>(Sender);
	if (vEdt)
	{
		if(vEdt->Modified)
		{
			vEdt->Modified = false;
			int vValor = vEdt->Text.ToInt();
			if(!dtmEstacionamento->PesquiseTipo(vValor))
			{
                dtmEstacionamento->CrieNovoTipo(vValor);            }
        }
    }
}
//---------------------------------------------------------------------------

