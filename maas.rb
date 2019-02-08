# coding: utf-8
require 'cuba'
require 'json'

ApiErrors = [ { error: 'merp' },
              { error: 'OvO'  },
              { error: 'UvU'  }
            ]

def unstable_merp()
  'merp'.chars.map do |c|
    if rand > 0.6
      c.upcase
    else
      c
    end
  end.join('')
end

def loud_merp()
  'MERP' << (rand * 10).to_i.times.collect do
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
      on 'merp' do
        res.write 'merp'.to_json
      end

      on 'umerp' do
        res.write 'ₘₑᵣₚ'.to_json
      end

      on 'cammerp' do
        res.write unstable_merp.to_json
      end

      on 'MERP' do
        res.write loud_merp.to_json
      end

      on true do
        res.write ApiErrors.sample.to_json
      end
    end
  end

  on post do
    on 'api/v1/merp' do
      on param('amount') do |amt|
        merps = []
        amt.to_i.times { merps << 'merp' }
        
        res.write merps.to_json
      end

      on true do
        res.write ApiErrors.sample.to_json
      end
    end
  end
end
