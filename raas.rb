# coding: utf-8
require 'cuba'
require 'json'

ApiErrors = [ { error: 'reet' },
              { error: 'OwO'  },
              { error: 'UwU'  }
            ]

def unstable_reet()
  'reet'.chars.map do |c|
    if rand > 0.6
      c.upcase
    else
      c
    end
  end.join('')
end

def loud_reet()
  'REET' << (rand * 10).to_i.times.collect do
    r = rand
    if r < 0.3
      '!'
    elsif r < 0.5
      '?'
    elsif r < 0.7
      '‽'
    end
  end.join('')
end


Cuba.define do
  res.headers['Content-Type'] = 'application/json; charset=utf-8'
  
  on get do
    on 'api/v1' do
      on 'reet' do
        res.write 'reet'.to_json
      end

      on 'ureet' do
        res.write 'ᵣₑₑₜ'.to_json
      end

      on 'Reet' do
        res.write unstable_reet.to_json
      end

      on 'REET' do
        res.write loud_reet.to_json
      end

      on true do
        res.write ApiErrors.sample.to_json
      end
    end
  end

  on post do
    on 'api/v1' do
      on 'reet' do
        on param('amount') do |amt|
          reets = []
          amt.to_i.times { reets << 'reet' }
          
          res.write reets.to_json
        end

        on true do
          res.write ApiErrors.sample.to_json
        end
      end

      on true do
        res.write ApiErrors.sample.to_json
      end
    end
  end
end
