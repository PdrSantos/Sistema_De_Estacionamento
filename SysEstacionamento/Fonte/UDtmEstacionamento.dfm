object dtmEstacionamento: TdtmEstacionamento
  OldCreateOrder = False
  Height = 397
  Width = 458
  object cnxEstacionamento: TFDConnection
    Params.Strings = (
      'ConnectionDef=EstacionamentoDB')
    Connected = True
    LoginPrompt = False
    Left = 61
    Top = 46
  end
  object qryMontadora: TFDQuery
    Connection = cnxEstacionamento
    SQL.Strings = (
      'select MON_COD, MON_NOM from MONTADORA'
      'where'
      '   MON_COD =:CODIGO')
    Left = 56
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryMontadoraMON_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'MON_COD'
      Origin = 'MON_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 2000
    end
    object qryMontadoraMON_NOM: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'MON_NOM'
      Origin = 'MON_NOM'
      Required = True
      Size = 60
    end
  end
  object FBDriver: TFDPhysFBDriverLink
    Left = 144
    Top = 48
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 208
    Top = 48
  end
  object qryTipo: TFDQuery
    Connection = cnxEstacionamento
    SQL.Strings = (
      'SELECT TIP_COD, TIP_DES from TIPO'
      'where TIP_COD = :CODIGO')
    Left = 144
    Top = 128
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTipoTIP_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'TIP_COD'
      Origin = 'TIP_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 2000
      MinValue = 1
    end
    object qryTipoTIP_DES: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 5
      FieldName = 'TIP_DES'
      Origin = 'TIP_DES'
      Required = True
    end
  end
  object qryCondutor: TFDQuery
    Connection = cnxEstacionamento
    SQL.Strings = (
      'SELECT CON_COD, CON_NOM, CON_CNH, CON_CPF from CONDUTOR'
      'where CON_COD = :CODIGO')
    Left = 208
    Top = 120
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCondutorCON_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'CON_COD'
      Origin = 'CON_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 2000
      MinValue = 1
    end
    object qryCondutorCON_NOM: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'CON_NOM'
      Origin = 'CON_NOM'
      Required = True
      Size = 60
    end
    object qryCondutorCON_CNH: TStringField
      DisplayLabel = 'CNH'
      FieldName = 'CON_CNH'
      Origin = 'CON_CNH'
      EditMask = '00000000000;0;_'
      Size = 15
    end
    object qryCondutorCON_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CON_CPF'
      Origin = 'CON_CPF'
      Required = True
      EditMask = '000\.000\.000\-00;1;_'
      FixedChar = True
      Size = 14
    end
  end
  object qryModelo: TFDQuery
    Connection = cnxEstacionamento
    SQL.Strings = (
      'select MOD_COD, MON_COD, MOD_NOM from MODELO'
      'where MOD_COD =:CODIGO')
    Left = 56
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryModeloMOD_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'MOD_COD'
      Origin = 'MOD_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 2000
      MinValue = 1
    end
    object qryModeloMON_COD: TIntegerField
      DisplayLabel = 'Montadora'
      FieldName = 'MON_COD'
      Origin = 'MON_COD'
      Required = True
    end
    object qryModeloMOD_NOM: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'MOD_NOM'
      Origin = 'MOD_NOM'
      Required = True
      Size = 60
    end
  end
  object qryVeiculo: TFDQuery
    Active = True
    Connection = cnxEstacionamento
    SQL.Strings = (
      
        'SELECT VEI_COD, MON_COD, MOD_COD, TIP_COD, VEI_PLA, VEI_ANO_FAB ' +
        'from VEICULO'
      'where VEI_COD = :CODIGO')
    Left = 144
    Top = 176
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryVeiculoVEI_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'VEI_COD'
      Origin = 'VEI_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 2000
      MinValue = 1
    end
    object qryVeiculoMON_COD: TIntegerField
      DisplayLabel = 'Montadora'
      DisplayWidth = 5
      FieldName = 'MON_COD'
      Origin = 'MON_COD'
      Required = True
    end
    object qryVeiculoMOD_COD: TIntegerField
      DisplayLabel = 'Modelo'
      DisplayWidth = 5
      FieldName = 'MOD_COD'
      Origin = 'MOD_COD'
      Required = True
    end
    object qryVeiculoTIP_COD: TIntegerField
      DisplayLabel = 'Tipo'
      DisplayWidth = 5
      FieldName = 'TIP_COD'
      Origin = 'TIP_COD'
      Required = True
    end
    object qryVeiculoVEI_PLA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'VEI_PLA'
      Origin = 'VEI_PLA'
      Size = 12
    end
    object qryVeiculoVEI_ANO_FAB: TIntegerField
      DisplayLabel = 'Fabrica'#231#227'o'
      DisplayWidth = 5
      FieldName = 'VEI_ANO_FAB'
      Origin = 'VEI_ANO_FAB'
    end
  end
  object qryConducao: TFDQuery
    Active = True
    Connection = cnxEstacionamento
    SQL.Strings = (
      'SELECT CND_COD, CON_COD, VEI_COD from CONDUCAO')
    Left = 208
    Top = 176
    object qryConducaoCND_COD: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CND_COD'
      Origin = 'CND_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 5000
      MinValue = 1
    end
    object qryConducaoCON_COD: TIntegerField
      DisplayLabel = 'Condutor'
      DisplayWidth = 5
      FieldName = 'CON_COD'
      Origin = 'CON_COD'
    end
    object qryConducaoVEI_COD: TIntegerField
      DisplayLabel = 'Ve'#237'culo'
      DisplayWidth = 5
      FieldName = 'VEI_COD'
      Origin = 'VEI_COD'
      Required = True
    end
  end
  object qryTicket: TFDQuery
    Active = True
    OnNewRecord = EvAdicionarDataHoraCorrenteNewRecord
    MasterSource = dtsConducaoTicketMD
    MasterFields = 'CND_COD'
    DetailFields = 'CND_COD'
    Connection = cnxEstacionamento
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'SELECT TIC_NUM, CND_COD, TIC_DAT, TIC_HOR_ENT, TIC_HOR_SAI, TIC_' +
        'VAL_PAG'
      'FROM TICKET'
      'where'
      '  CND_COD =:CND_COD')
    Left = 56
    Top = 232
    ParamData = <
      item
        Name = 'CND_COD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryTicketTIC_NUM: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'TIC_NUM'
      Origin = 'TIC_NUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      MaxValue = 200000
      MinValue = 1
    end
    object qryTicketCND_COD: TIntegerField
      DisplayLabel = 'Condu'#231#227'o'
      DisplayWidth = 8
      FieldName = 'CND_COD'
      Origin = 'CND_COD'
      Required = True
    end
    object qryTicketTIC_DAT: TSQLTimeStampField
      DisplayLabel = 'Data'
      DisplayWidth = 7
      FieldName = 'TIC_DAT'
      Origin = 'TIC_DAT'
      EditMask = '00/00/0000;1;_'
    end
    object qryTicketTIC_HOR_ENT: TSQLTimeStampField
      DisplayLabel = 'Entrada'
      DisplayWidth = 10
      FieldName = 'TIC_HOR_ENT'
      Origin = 'TIC_HOR_ENT'
      DisplayFormat = 'hh:nn:ss'
      EditMask = '00:00:00;1;_'
    end
    object qryTicketTIC_HOR_SAI: TSQLTimeStampField
      DisplayLabel = 'Sa'#237'da'
      DisplayWidth = 10
      FieldName = 'TIC_HOR_SAI'
      Origin = 'TIC_HOR_SAI'
      EditMask = '00:00:00;1;_'
    end
    object qryTicketTIC_VAL_PAG: TBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 19
      FieldName = 'TIC_VAL_PAG'
      Origin = 'TIC_VAL_PAG'
      currency = True
      Precision = 18
    end
  end
  object dtsConducaoTicketMD: TDataSource
    DataSet = qryConducao
    Left = 272
    Top = 240
  end
end
