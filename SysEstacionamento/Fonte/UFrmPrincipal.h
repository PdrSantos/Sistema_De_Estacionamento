//---------------------------------------------------------------------------

#ifndef UFrmPrincipalH
#define UFrmPrincipalH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Menus.hpp>
//---------------------------------------------------------------------------
class TFrmPrincipal : public TForm
{
__published:	// IDE-managed Components
	TMainMenu *mnmPrincipal;
	TMenuItem *Cadastro1;
	TMenuItem *Cadastro2;
	TMenuItem *Relatrio1;
	TMenuItem *Condutor1;
	TMenuItem *Condutor2;
	TMenuItem *Modelo1;
	TMenuItem *N1;
	TMenuItem *N2;
	TMenuItem *ipo1;
	TMenuItem *ipo2;
	TMenuItem *Sair1;
	TMenuItem *icket1;
	TMenuItem *Veculo1;
	void __fastcall EvEncerrarSistemaOnClick(TObject *Sender);
	void __fastcall EvAtivaCadastroCondutorOnClick(TObject *Sender);
	void __fastcall EvAtivarCadastroMontadoraOnClick(TObject *Sender);
	void __fastcall EvAtivarCadastroModeloOnClick(TObject *Sender);
	void __fastcall EvAtivaCadastroVeiculoOnClick(TObject *Sender);
	void __fastcall EvAtivarCadastroTipoOnClick(TObject *Sender);
	void __fastcall EvAtivaCadastroTicketOnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFrmPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmPrincipal *FrmPrincipal;
//---------------------------------------------------------------------------
#endif
