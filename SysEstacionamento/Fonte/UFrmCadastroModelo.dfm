inherited FrmCadastroModelo: TFrmCadastroModelo
  Caption = 'Cadastro de Modelo'
  ClientHeight = 199
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 33
    Top = 24
    Width = 50
    Height = 19
    Caption = '&C'#243'digo'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 64
    Width = 75
    Height = 19
    Caption = '&Montadora'
    FocusControl = dbeMontadora
  end
  object Label3: TLabel [2]
    Left = 41
    Top = 104
    Width = 42
    Height = 19
    Caption = '&Nome'
    FocusControl = dbeNome
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 146
    ExplicitTop = 146
  end
  object dbeCodigo: TDBEdit [4]
    Left = 89
    Top = 21
    Width = 99
    Height = 27
    DataField = 'MOD_COD'
    DataSource = dtsPrincipal
    TabOrder = 1
    OnExit = EvPesquisarAoSairExit
  end
  object dbeMontadora: TDBEdit [5]
    Left = 89
    Top = 61
    Width = 59
    Height = 27
    DataField = 'MON_COD'
    DataSource = dtsPrincipal
    TabOrder = 2
  end
  object dbeNome: TDBEdit [6]
    Left = 89
    Top = 101
    Width = 350
    Height = 27
    CharCase = ecUpperCase
    DataField = 'MOD_NOM'
    DataSource = dtsPrincipal
    TabOrder = 3
  end
  object dblkMontadora: TDBLookupComboBox [7]
    Left = 154
    Top = 61
    Width = 285
    Height = 27
    DataField = 'MON_COD'
    DataSource = dtsPrincipal
    KeyField = 'MON_COD'
    ListField = 'MON_NOM'
    ListSource = dtsMontadoraLK
    PopupMenu = ppmMontadora
    TabOrder = 4
  end
  inherited ImgAtiva: TImageList
    Left = 328
    Top = 16
  end
  inherited ImgDesativado: TImageList
    Left = 384
    Top = 16
  end
  inherited ImgQuente: TImageList
    Left = 432
    Top = 16
  end
  inherited dtsPrincipal: TDataSource
    DataSet = dtmEstacionamento.qryModelo
    Left = 224
    Top = 16
  end
  inherited aclCRUD: TActionList
    Left = 280
    Top = 16
  end
  object dtsMontadoraLK: TDataSource
    DataSet = qryMontadoraLK
    Left = 448
    Top = 64
  end
  object qryMontadoraLK: TFDQuery
    Connection = dtmEstacionamento.cnxEstacionamento
    SQL.Strings = (
      'SELECT MON_COD, MON_NOM FROM MONTADORA'
      'order by MON_NOM')
    Left = 520
    Top = 24
    object qryMontadoraLKMON_COD: TIntegerField
      FieldName = 'MON_COD'
      Origin = 'MON_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMontadoraLKMON_NOM: TStringField
      FieldName = 'MON_NOM'
      Origin = 'MON_NOM'
      Required = True
      Size = 60
    end
  end
  object ppmMontadora: TPopupMenu
    Left = 512
    Top = 72
    object AtualizeMontadora1: TMenuItem
      Caption = 'Atualize Montadora'
      OnClick = EvAtualizeMontadoraClick
    end
  end
end
