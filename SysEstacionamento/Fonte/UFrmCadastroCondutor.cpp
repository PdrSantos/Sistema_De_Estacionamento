//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroCondutor.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroCondutor *FrmCadastroCondutor;
//---------------------------------------------------------------------------
__fastcall TFrmCadastroCondutor::TFrmCadastroCondutor(TComponent* Owner)
	: TFrmModeloCadastroCRUD(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TFrmCadastroCondutor::EvPesquiseCondutorExit(TObject *Sender)
{
	TDBEdit *vEdt = dynamic_cast<TDBEdit*>(Sender);
	if ((vEdt))
	{
		if (DBEdit1->Modified)
		{
			vEdt->Modified = false;
			int vValor = vEdt->Text.ToInt();
			if(!dtmEstacionamento->PesquiseCondutor(vValor))
			{
				dtmEstacionamento->CrieNovoCondutor(vValor);
			}
		}
	}
}
//---------------------------------------------------------------------------

