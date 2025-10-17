//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmCadastroTicket.h"
#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "UFrmModeloCadastroCRUD"
#pragma resource "*.dfm"
TFrmCadastroTicket *FrmCadastroTicket;
//---------------------------------------------------------------------------
__fastcall TFrmCadastroTicket::TFrmCadastroTicket(TComponent* Owner)
	: TFrmModeloCadastroCRUD(Owner)
{
	dtmEstacionamento->ConfigureLookUp(qryCondutorLK);
	dtmEstacionamento->ConfigureLookUp(qryVeiculoLK);

}
//---------------------------------------------------------------------------
void __fastcall TFrmCadastroTicket::EvAtualizarLookupClick(TObject *Sender)
{
    dtmEstacionamento->AtualizeLookUp(qryCondutorLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroTicket::EvAtualizarVeiculoLKClick(TObject *Sender)
{
    dtmEstacionamento->AtualizeLookUp(qryVeiculoLK);
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroTicket::EvGravarConducaoEnter(TObject *Sender)
{
    dtmEstacionamento->GraveConducao();
}
//---------------------------------------------------------------------------

void __fastcall TFrmCadastroTicket::EvAtribuitHoraCorrenteOnClick(TObject *Sender)

{
    dtmEstacionamento->AtribuaHoraSaidaTicket();
}
//---------------------------------------------------------------------------

