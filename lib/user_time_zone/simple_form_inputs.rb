module UserTimeZone
  module SimpleFormInputs
    # Creates a hidden input with data-js-time-zone attribute
    # Javascript will pick this up and fill in the timezone
    # from the browser

    if defined?(SimpleForm)

      class BrowserTimeZoneInput < ::SimpleForm::Inputs::HiddenInput
        def initialize(*)
          super
          @html_classes << 'hidden'
        end

        def input_html_options
          super.merge(data: {js_time_zone: ''})
        end
      end

    end
  end
end
