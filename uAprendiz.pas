unit uAprendiz;

interface

uses uTrabalhador, System.SysUtils, FMX.Dialogs;

  type TAprendiz = class(TTrabalhador)
  private
    PrestandoAtencaoNaExplicacao:Boolean;
    ConhecimentoAbsorvido:Boolean;
    procedure PrestarAtencaoNaExplicacao;
    procedure RealizarAsPraticas;
    procedure ConstruirSistema;
  public
    procedure ExecutarFuncao; override;
  end;

implementation

{ TAprendiz }

procedure TAprendiz.ExecutarFuncao;
begin
  inherited ExecutarFuncao;
  Self.PrestarAtencaoNaExplicacao;
  Self.RealizarAsPraticas;
  Self.ConstruirSistema;
end;

procedure TAprendiz.PrestarAtencaoNaExplicacao;
begin
  PrestandoAtencaoNaExplicacao:=True;
  ShowMessage('O(a) aprendiz '+Self.Nome+' est� prestando aten��o na explica��o');
end;

procedure TAprendiz.RealizarAsPraticas;
begin
  PrestandoAtencaoNaExplicacao:=False;
  ShowMessage('O(a) aprendiz '+Self.Nome+' est� praticando');
  ConhecimentoAbsorvido:=(Random(1).ToBoolean);
end;

procedure TAprendiz.ConstruirSistema;
begin
  if ConhecimentoAbsorvido then begin
    ShowMessage('O(a) aprendiz '+Self.Nome+' est� construindo um sistema');
  end else begin
    ShowMessage('O(a) aprendiz '+Self.Nome+' est� revisando o conte�do e aprendendo por conta pr�pria para construir um sistema');
  end;
end;

end.
