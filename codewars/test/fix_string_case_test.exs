defmodule Tests.FixStringCase do
  use ExUnit.Case

  describe "- Should properly implement solve/1:" do
    test ~s<solve("code")> do
      assert FixStringCase.solve("code") === "code"
    end

    test ~s<solve("CODe")> do
      assert FixStringCase.solve("CODe") === "CODE"
    end

    test ~s<solve("COde")> do
      assert FixStringCase.solve("COde") === "code"
    end

    test ~s<solve("Code")> do
      assert FixStringCase.solve("Code") === "code"
    end
  end
end
