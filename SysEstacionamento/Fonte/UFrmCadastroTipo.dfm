inherited FrmCadastroTipo: TFrmCadastroTipo
  Caption = 'Cadastro de Tipo'
  ClientHeight = 188
  ClientWidth = 573
  ExplicitWidth = 579
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 41
    Top = 24
    Width = 50
    Height = 19
    Caption = '&C'#243'digo'
    FocusControl = dbeCodigo
  end
  object Label2: TLabel [1]
    Left = 31
    Top = 72
    Width = 67
    Height = 19
    Caption = '&Descri'#231#227'o'
    FocusControl = dbeDescricao
  end
  inherited tlbCadastroCRUD: TToolBar
    Top = 135
    Width = 573
    ExplicitTop = 135
    ExplicitWidth = 573
  end
  object dbeCodigo: TDBEdit [3]
    Left = 104
    Top = 21
    Width = 99
    Height = 27
    DataField = 'TIP_COD'
    DataSource = dtsPrincipal
    TabOrder = 1
    OnExit = EvPesquiseTipoExit
  end
  object dbeDescricao: TDBEdit [4]
    Left = 104
    Top = 69
    Width = 281
    Height = 27
    CharCase = ecUpperCase
    DataField = 'TIP_DES'
    DataSource = dtsPrincipal
    TabOrder = 2
  end
  inherited ImgAtiva: TImageList
    Left = 472
    Top = 16
  end
  inherited ImgDesativado: TImageList
    Left = 472
    Top = 64
  end
  inherited ImgQuente: TImageList
    Left = 416
    Top = 64
  end
  inherited dtsPrincipal: TDataSource
    DataSet = dtmEstacionamento.qryTipo
    Left = 360
    Top = 16
  end
  inherited aclCRUD: TActionList
    Left = 416
    Top = 16
  end
end
