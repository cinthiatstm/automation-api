require "report_builder"
require "date"

Before '@user' do
  @body = {
    "name":"test",
    "salary":"123",
    "age":"23"
  }

  body = JSON.generate(body)

  @user = User.new(@body)

  at_exit do
    @infos = {
      "Data do Teste" => Time.now.to_s,
    }
    ReportBuilder.configure do |config|
      config.input_path = "log/report.json"
      config.report_path = "log/report"
      config.report_types = [:html]
      config.report_title = "Cadastro Cliente Mobile"
      config.additional_info = @infos
      config.color = "indigo"
    end
    ReportBuilder.build_report
  end
end