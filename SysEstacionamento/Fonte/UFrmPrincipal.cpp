//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UFrmPrincipal.h"
#include "UFrmCadastroCondutor.h"
#include "UFrmCadastroMontadora.h"
#include "UFrmCadastroModelo.h"
#include "UFrmCadastroVeiculo.h"
#include "UFrmCadastroTipo.h"
#include "UFrmCadastroTicket.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFrmPrincipal *FrmPrincipal;
//---------------------------------------------------------------------------
__fastcall TFrmPrincipal::TFrmPrincipal(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFrmPrincipal::EvEncerrarSistemaOnClick(TObject *Sender)
{
       Close();
}
//---------------------------------------------------------------------------


void __fastcall TFrmPrincipal::EvAtivaCadastroCondutorOnClick(TObject *Sender)
{
	new TFrmCadastroCondutor (this);
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::EvAtivarCadastroMontadoraOnClick(TObject *Sender)
{
    new TFrmCadastroMontadora (this);
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::EvAtivarCadastroModeloOnClick(TObject *Sender)
{
       new TFrmCadastroModelo(this);
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::EvAtivaCadastroVeiculoOnClick(TObject *Sender)
{
      new TFrmCadastroVeiculo(this);
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::EvAtivarCadastroTipoOnClick(TObject *Sender)
{
	new TFrmCadastroTipo(this);
}
//---------------------------------------------------------------------------

void __fastcall TFrmPrincipal::EvAtivaCadastroTicketOnClick(TObject *Sender)
{
	new TFrmCadastroTicket(this);
}
//---------------------------------------------------------------------------

