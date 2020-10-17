class CuentaBancaria
    attr_accessor :name
    attr_reader :vip

    def initialize(name, num_acc, vip = 0)
        @name = name
        assign_num_acc(num_acc)
        @vip = vip
    end

    def assign_num_acc(num_acc)
        (num_acc.digits.count != 8) ? (raise RangeError 'debe contener 8 digitos') : (@num_acc = num_acc)
    end

    def numero_de_cuenta
        "#{self.vip}-#{num_acc}"
    end

end

