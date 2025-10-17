inherited FrmCadastroVeiculo: TFrmCadastroVeiculo
  ActiveControl = dbeCodigo
  Caption = 'Cadastro de Ve'#237'culo'
  ClientHeight = 274
  ClientWidth = 575
  ExplicitWidth = 581
  ExplicitHeight = 303
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 49
    Top = 24
    Width = 50
    Height = 19
    Caption = '&C'#243'digo'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 49
    Width = 75
    Height = 19
    Caption = '&Montadora'
    FocusControl = dbeMontadora
  end
  object Label3: TLabel [2]
    Left = 48
    Top = 88
    Width = 51
    Height = 19
    Caption = 'M&odelo'
    FocusControl = dbeModelo
  end
  object Label4: TLabel [3]
    Left = 67
    Top = 120
    Width = 32
    Height = 19
    Caption = '&Tipo'
    FocusControl = dbeTipo
  end
  object Label5: TLabel [4]
    Left = 63
    Top = 150
    Width = 36
    Height = 19
    Caption = '&Placa'
    FocusControl = dbePlaca
  end
  object Label6: TLabel [5]
    Left = 25
    Top = 183
    Width = 74
    Height = 19
    Caption = '&Fabrica'#231#227'o'
    FocusControl = dbeFabricacao
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 221
    Width = 575
    ExplicitTop = 221
    ExplicitWidth = 575
  end
  object dbeCodigo: TDBEdit [7]
    Left = 136
    Top = 21
    Width = 99
    Height = 27
    DataField = 'VEI_COD'
    DataSource = dtsPrincipal
    TabOrder = 1
    OnExit = EvPesquiseVeiculoExit
  end
  object dbeMontadora: TDBEdit [8]
    Left = 136
    Top = 51
    Width = 99
    Height = 27
    DataField = 'MON_COD'
    DataSource = dtsPrincipal
    TabOrder = 2
  end
  object dbeModelo: TDBEdit [9]
    Left = 136
    Top = 84
    Width = 99
    Height = 27
    DataField = 'MOD_COD'
    DataSource = dtsPrincipal
    ReadOnly = True
    TabOrder = 3
  end
  object dbeTipo: TDBEdit [10]
    Left = 136
    Top = 117
    Width = 99
    Height = 27
    DataField = 'TIP_COD'
    DataSource = dtsPrincipal
    TabOrder = 4
  end
  object dbePlaca: TDBEdit [11]
    Left = 136
    Top = 147
    Width = 99
    Height = 27
    DataField = 'VEI_PLA'
    DataSource = dtsPrincipal
    TabOrder = 5
  end
  object dbeFabricacao: TDBEdit [12]
    Left = 136
    Top = 180
    Width = 99
    Height = 27
    DataField = 'VEI_ANO_FAB'
    DataSource = dtsPrincipal
    TabOrder = 6
  end
  object dblkMontadora: TDBLookupComboBox [13]
    Left = 241
    Top = 51
    Width = 312
    Height = 27
    DataField = 'MON_COD'
    DataSource = dtsPrincipal
    KeyField = 'MON_COD'
    ListField = 'MON_NOM'
    ListSource = dtsMontadoraLK
    PopupMenu = ppmMontadoraLK
    TabOrder = 7
  end
  object dblkModelo: TDBLookupComboBox [14]
    Left = 241
    Top = 84
    Width = 312
    Height = 27
    DataField = 'MOD_COD'
    DataSource = dtsPrincipal
    KeyField = 'MOD_COD'
    ListField = 'MOD_NOM'
    ListSource = dtsModeloLK
    TabOrder = 8
  end
  object dblkTipo: TDBLookupComboBox [15]
    Left = 241
    Top = 117
    Width = 312
    Height = 27
    DataField = 'TIP_COD'
    DataSource = dtsPrincipal
    KeyField = 'TIP_COD'
    ListField = 'TIP_DES'
    ListSource = dtsTipoLK
    PopupMenu = ppmTipo
    TabOrder = 9
  end
  inherited ImgAtiva: TImageList
    Left = 264
    Top = 8
  end
  inherited ImgDesativado: TImageList
    Left = 328
    Top = 8
  end
  inherited ImgQuente: TImageList
    Left = 400
    Top = 8
  end
  inherited dtsPrincipal: TDataSource
    DataSet = dtmEstacionamento.qryVeiculo
    Left = 512
    Top = 8
  end
  inherited aclCRUD: TActionList
    Left = 456
    Top = 8
  end
  object qryMontadoraLK: TFDQuery
    Connection = dtmEstacionamento.cnxEstacionamento
    SQL.Strings = (
      'select MON_COD, MON_NOM from MONTADORA'
      'order by MON_NOM')
    Left = 448
    Top = 48
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
  object dtsMontadoraLK: TDataSource
    DataSet = qryMontadoraLK
    OnDataChange = EvFiltraModeloDataChange
    Left = 520
    Top = 48
  end
  object dtsModeloLK: TDataSource
    DataSet = qryModeloLK
    Left = 392
    Top = 72
  end
  object qryModeloLK: TFDQuery
    MasterSource = dtsMontadoraLK
    MasterFields = 'MON_COD'
    Connection = dtmEstacionamento.cnxEstacionamento
    SQL.Strings = (
      'select MOD_COD, MOD_NOM from MODELO'
      'where MON_COD =:MON_COD'
      'order by MOD_NOM ')
    Left = 328
    Top = 72
    ParamData = <
      item
        Name = 'MON_COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsTipoLK: TDataSource
    DataSet = qryTipoLK
    Left = 224
    Top = 112
  end
  object qryTipoLK: TFDQuery
    Connection = dtmEstacionamento.cnxEstacionamento
    SQL.Strings = (
      'SELECT TIP_COD, TIP_DES from TIPO'
      'order by TIP_DES')
    Left = 280
    Top = 112
    object qryTipoLKTIP_COD: TIntegerField
      FieldName = 'TIP_COD'
      Origin = 'TIP_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTipoLKTIP_DES: TStringField
      FieldName = 'TIP_DES'
      Origin = 'TIP_DES'
      Required = True
    end
  end
  object ppmMontadoraLK: TPopupMenu
    Left = 248
    Top = 160
    object AtualizeMontadora1: TMenuItem
      Caption = 'Atualize Montadora'
      OnClick = EvAtualizaMontadoraLKOnClick
    end
  end
  object ppmModeloLK: TPopupMenu
    Left = 328
    Top = 160
    object AtualizeModelo1: TMenuItem
      Caption = 'Atualize Modelo'
      OnClick = EvAtualizeModeloLKOnClick
    end
  end
  object ppmTipo: TPopupMenu
    Left = 400
    Top = 160
    object AtualizeTipo1: TMenuItem
      Caption = 'Atualize Tipo'
      OnClick = EvAtualizeTipoLKOnClick
    end
  end
end
