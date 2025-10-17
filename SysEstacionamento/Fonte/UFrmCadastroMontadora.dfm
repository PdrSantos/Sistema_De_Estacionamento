inherited FrmCadastroMontadora: TFrmCadastroMontadora
  Caption = 'Cadastro de Montadora'
  ClientHeight = 155
  ExplicitHeight = 184
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 24
    Top = 16
    Width = 50
    Height = 19
    Caption = '&C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 55
    Width = 42
    Height = 19
    Caption = '&Nome'
    FocusControl = DBEdit2
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 102
    ExplicitTop = 102
  end
  object DBEdit1: TDBEdit [3]
    Left = 80
    Top = 13
    Width = 153
    Height = 27
    DataField = 'MON_COD'
    DataSource = dtsPrincipal
    TabOrder = 1
    OnExit = EvPesquisarMontadoraExit
  end
  object DBEdit2: TDBEdit [4]
    Left = 80
    Top = 52
    Width = 374
    Height = 27
    CharCase = ecUpperCase
    DataField = 'MON_NOM'
    DataSource = dtsPrincipal
    TabOrder = 2
  end
  inherited dtsPrincipal: TDataSource
    DataSet = dtmEstacionamento.qryMontadora
  end
end
