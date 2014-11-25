inherited FCad_Servicos: TFCad_Servicos
  Caption = 'Tela de Servi'#231'os'
  ClientHeight = 539
  ClientWidth = 702
  ExplicitWidth = 710
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCon: TPanel [0]
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnBusca: TPanel
      Width = 642
      ExplicitWidth = 642
      inherited cxConsulta: TcxComboBox
        Properties.Items.Strings = (
          'C'#243'digo'
          'servico')
        Properties.OnCloseUp = cxConsultaPropertiesCloseUp
        Text = 'C'#211'DIGO'
      end
      inherited cbAtivo: TcxComboBox
        Style.IsFontAssigned = True
      end
    end
    inherited pnBotaoCad: TPanel
      Width = 642
      ExplicitWidth = 642
      inherited cxApagar: TcxButton
        OnClick = cxApagarClick
      end
    end
    inherited pnBotaoCon: TPanel
      Top = 488
      Width = 642
      ExplicitTop = 488
      ExplicitWidth = 642
    end
    inherited grConsulta: TcxGrid
      Width = 642
      Height = 414
      ExplicitWidth = 642
      ExplicitHeight = 414
    end
  end
  inherited pnImg: TcxImage [1]
    Left = 644
    ExplicitLeft = 644
    ExplicitHeight = 539
    Height = 539
  end
  inherited pnCad: TPanel [2]
    Width = 644
    Height = 539
    ExplicitWidth = 644
    ExplicitHeight = 539
    inherited pnMenu: TPanel
      Width = 642
      ExplicitWidth = 642
    end
  end
end
