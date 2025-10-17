//---------------------------------------------------------------------------


#pragma hdrstop

#include "UDtmEstacionamento.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma resource "*.dfm"
TdtmEstacionamento *dtmEstacionamento;
//---------------------------------------------------------------------------
__fastcall TdtmEstacionamento::TdtmEstacionamento(TComponent* Owner)
	: TDataModule(Owner)
{
}
//---------------------------------------------------------------------------

void _fastcall TdtmEstacionamento::ConfigureLookUp(TFDQuery* AQuery)
{
	if (AQuery->Active)
	{
		AQuery->Close();
	}
	AQuery->Connection = cnxEstacionamento;
	AQuery->Open();
}
//---------------------------------------------------------------------------

void _fastcall TdtmEstacionamento::AtualizeLookUp(TFDQuery* AQuery)
{
	AQuery->Close();
	AQuery->Open();
}
//---------------------------------------------------------------------------

void _fastcall TdtmEstacionamento::LimpeModeloVeiculo()
{
	if (qryVeiculoMON_COD->NewValue != qryVeiculoMON_COD->OldValue)
	{
		if (qryVeiculo->State == dsEdit ||
			qryVeiculo->State == dsInsert)
		{
		 qryVeiculoMON_COD->AsVariant = Null();
		}
	}
}
//--------------------------------------------------------------------
void _fastcall TdtmEstacionamento::GraveConducao()
{
	if (qryConducao->State == dsInsert ||
		qryConducao->State == dsEdit)
		{
            qryConducao->Post();
        }
}

//--------------------------------------------------------------------

void __fastcall TdtmEstacionamento::EvAdicionarDataHoraCorrenteNewRecord(TDataSet *DataSet)

{
	qryTicketTIC_DAT->AsDateTime     = Date();
	qryTicketTIC_HOR_ENT->AsDateTime = Now();
}
//--------------------------------------------------------------------
void _fastcall TdtmEstacionamento::AtribuaHoraSaidaTicket()
{
	qryTicket->Edit();
	qryTicketTIC_HOR_SAI->AsDateTime = Now();
}
//--------------------------------------------------------------------
bool __fastcall TdtmEstacionamento::Pesquise(TFDQuery *AQuery,
											 UnicodeString ANomePK,
											 int AValorPesquisa)
{
	bool resultado = false;
	if(AQuery)
	{
		try
		{
			AQuery->DisableControls();
			AQuery->Close();
			AQuery->ParamByName(ANomePK)->AsInteger = AValorPesquisa;
			AQuery->Open();
			resultado = !AQuery->IsEmpty();
		}
		__finally
		{
			AQuery->EnableControls();
			return resultado;
		}
	}
	return resultado;
}

//--------------------------------------------------------------------
bool __fastcall TdtmEstacionamento::PesquiseMontadora(int AValorPK)
{
	return Pesquise(qryMontadora,"CODIGO",AValorPK);
}

//--------------------------------------------------------------------
void __fastcall TdtmEstacionamento::CrieNovaLinha(TFDQuery *AQuery,
												  UnicodeString AColunaPK,
												  int AValorPK)
{
	AQuery->Cancel();
	AQuery->Insert();
    AQuery->FieldByName(AColunaPK)->AsInteger = AValorPK;
}
//--------------------------------------------------------------------
void __fastcall TdtmEstacionamento::CrieNovaMontadora(int AValorPK)
{
	CrieNovaLinha(qryMontadora,"MON_COD",AValorPK);
}
//--------------------------------------------------------------------
bool __fastcall TdtmEstacionamento::PesquiseModelo(int AValorPK)
{
	return Pesquise(qryModelo,"CODIGO",AValorPK);
}
//--------------------------------------------------------------------
void __fastcall TdtmEstacionamento::CrieNovoModelo(int AValorPK)
{
	CrieNovaLinha(qryModelo,"MOD_COD",AValorPK);
}
//--------------------------------------------------------------------
bool __fastcall TdtmEstacionamento::PesquiseVeiculo(int AValorPK)
{
	return Pesquise(qryVeiculo,"CODIGO", AValorPK);
}
//--------------------------------------------------------------------
void __fastcall TdtmEstacionamento::CrieNovoVeiculo(int AValorPK)
{
	CrieNovaLinha(qryVeiculo,"VEI_COD", AValorPK);
}
//--------------------------------------------------------------------
bool __fastcall TdtmEstacionamento::PesquiseTipo(int AValorPK)
{
	return Pesquise(qryTipo,"CODIGO",AValorPK);
}
//--------------------------------------------------------------------
void __fastcall TdtmEstacionamento::CrieNovoTipo(int AValorPK)
{
    CrieNovaLinha(qryTipo,"TIP_COD",AValorPK);
}
//--------------------------------------------------------------------
bool __fastcall TdtmEstacionamento::PesquiseCondutor(int AValorPK)
{
	return Pesquise(qryCondutor,"CODIGO",AValorPK);
}
//--------------------------------------------------------------------
void __fastcall TdtmEstacionamento::CrieNovoCondutor(int AValorPK)
{
	CrieNovaLinha(qryCondutor,"CON_COD",AValorPK);
}
//--------------------------------------------------------------------

