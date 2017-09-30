inherited FormConsultaVendas: TFormConsultaVendas
  Caption = 'Vendas'
  ClientHeight = 279
  ClientWidth = 602
  ExplicitWidth = 618
  ExplicitHeight = 318
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid1: TDBGrid
    DataSource = DataSource
    Columns = <
      item
        Expanded = False
        FieldName = 'VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_PAGAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SQLDataSetVendasItens'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CANCELADA'
        Visible = True
      end>
  end
  inherited DataSource: TDataSource
    DataSet = DataModule1.ClientDataSetVendas
  end
end
