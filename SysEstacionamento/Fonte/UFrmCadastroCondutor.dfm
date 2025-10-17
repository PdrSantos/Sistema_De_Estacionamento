inherited FrmCadastroCondutor: TFrmCadastroCondutor
  Caption = 'Cadastro de Condutor'
  ClientHeight = 243
  ExplicitHeight = 272
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
    Left = 32
    Top = 49
    Width = 42
    Height = 19
    Caption = '&Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 42
    Top = 93
    Width = 32
    Height = 19
    Caption = 'CNH'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 47
    Top = 133
    Width = 27
    Height = 19
    Caption = 'CPF'
    FocusControl = DBEdit4
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 190
    ExplicitTop = 190
  end
  object DBEdit1: TDBEdit [5]
    Left = 88
    Top = 13
    Width = 99
    Height = 27
    DataField = 'CON_COD'
    DataSource = dtsPrincipal
    TabOrder = 1
    OnExit = EvPesquiseCondutorExit
  end
  object DBEdit2: TDBEdit [6]
    Left = 88
    Top = 46
    Width = 350
    Height = 27
    DataField = 'CON_NOM'
    DataSource = dtsPrincipal
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [7]
    Left = 88
    Top = 90
    Width = 113
    Height = 27
    DataField = 'CON_CNH'
    DataSource = dtsPrincipal
    MaxLength = 11
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [8]
    Left = 88
    Top = 130
    Width = 89
    Height = 27
    DataField = 'CON_CPF'
    DataSource = dtsPrincipal
    TabOrder = 4
  end
  inherited dtsPrincipal: TDataSource
    DataSet = dtmEstacionamento.qryCondutor
  end
end
