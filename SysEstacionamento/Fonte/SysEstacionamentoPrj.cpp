//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("UFrmCadastroMontadora.cpp", FrmCadastroMontadora);
USEFORM("UFrmCadastroTipo.cpp", FrmCadastroTipo);
USEFORM("UFrmCadastroVeiculo.cpp", FrmCadastroVeiculo);
USEFORM("UFrmModeloCadastroCRUD.cpp", FrmModeloCadastroCRUD);
USEFORM("UFrmPrincipal.cpp", FrmPrincipal);
USEFORM("UDtmEstacionamento.cpp", dtmEstacionamento); /* TDataModule: File Type */
USEFORM("UFrmCadastroCondutor.cpp", FrmCadastroCondutor);
USEFORM("UFrmCadastroModelo.cpp", FrmCadastroModelo);
USEFORM("UFrmCadastroTicket.cpp", FrmCadastroTicket);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFrmPrincipal), &FrmPrincipal);
		Application->CreateForm(__classid(TdtmEstacionamento), &dtmEstacionamento);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
