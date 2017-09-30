inherited FormCadastroProdutos: TFormCadastroProdutos
  Caption = 'Cadastro de Produtos'
  ExplicitWidth = 761
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupBox1: TGroupBox
    Caption = 'Produto'
    ExplicitLeft = -1
    ExplicitTop = -5
    object Label1: TLabel [0]
      Left = 7
      Top = 32
      Width = 49
      Height = 13
      Caption = 'PRODUTO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel [1]
      Left = 7
      Top = 72
      Width = 59
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [2]
      Left = 7
      Top = 112
      Width = 36
      Height = 13
      Caption = 'MARCA'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [3]
      Left = 7
      Top = 152
      Width = 87
      Height = 13
      Caption = 'PRECO DE CUSTO'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [4]
      Left = 7
      Top = 192
      Width = 86
      Height = 13
      Caption = 'PRECO DE VENDA'
      FocusControl = DBEdit5
    end
    object Label6: TLabel [5]
      Left = 7
      Top = 232
      Width = 64
      Height = 13
      Caption = 'ATIVO (S/N)?'
    end
    inherited Button1: TButton
      OnClick = Button1Click
    end
    object DBEdit1: TDBEdit
      Left = 7
      Top = 48
      Width = 251
      Height = 21
      DataField = 'PRODUTO'
      DataSource = DataSource
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 7
      Top = 88
      Width = 500
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataSource
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 7
      Top = 128
      Width = 212
      Height = 21
      DataField = 'MARCA'
      DataSource = DataSource
      TabOrder = 3
    end
    object DBEdit4: TDBEdit
      Left = 7
      Top = 168
      Width = 212
      Height = 21
      DataField = 'PRECO_CUSTO'
      DataSource = DataSource
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 7
      Top = 208
      Width = 212
      Height = 21
      DataField = 'PRECO_VENDA'
      DataSource = DataSource
      TabOrder = 5
    end
    object DBComboBox1: TDBComboBox
      Left = 7
      Top = 251
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'ATIVO'
      DataSource = DataSource
      Items.Strings = (
        'S'
        'N')
      TabOrder = 6
    end
  end
  inherited DataSource: TDataSource
    DataSet = DataModule1.ClientDataSetProdutos
  end
end
