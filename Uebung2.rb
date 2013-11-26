class Konto
	def initialize
		@kontostand = 0
		@einzahlung = 0.0
		@abheben = 0.0
		@kontoinhaber = ""
		@kontonummer = 0
		@ueberziehungsrahmen = 0.0
	end
	def kontostand
			@kontostand
	end
	def ueberweisung
			@ueberweisung
	end
	def einzahlen(einzahlung)	
			if einzahlung <= 0
				puts "Einen positiven Einzahlungsbetrag eingeben: "
			else	
				puts "#{einzahlung}Euro wurde/-n erfolgreich eingezahlt"
				@kontostand += einzahlung
			end	
	end
	def abheben(abheben)	
			if (abheben <= 0 || ((@kontostand - abheben) < @ueberziehungsrahmen))
				puts "Einen positiven Einzahlungsbetrag eingeben / oder Konto nicht ausreichend gedeckt: "
			else	
				puts "#{abheben}Euro wurde/-n abgehoben "
				@kontostand -= abheben
			end	
	end
	
	attr_accessor :kontonummer, :kontoinhaber, :ueberziehungsrahmen

	def ueberweisen(ueberweisung, konto2, konto1)
		if (ueberweisung <= 0 || (kontostand - ueberweisung) < ueberziehungsrahmen)
				puts "Einen positiven Ueberweisungsbetrag eingeben / oder Konto nicht ausreichend gedeckt: "
			else
				konto1.abheben(ueberweisung)
				konto2.einzahlen(ueberweisung)
		end	
	end
end

puts "Hier ---> Start..."
konto1=Konto.new
konto2=Konto.new
print "Ueberziehungsrahmen, Konto1 ist " + "#{konto1.ueberziehungsrahmen = -500.0}"
konto2.ueberziehungsrahmen = -750.0
puts konto1.kontostand
konto1.einzahlen(-100)
puts "Neuer Kontostand " + "#{konto1.kontostand}"
puts "------------------------------------------"
konto1.abheben(750)
puts "Neuer Kontostand Kto1 " + "#{konto1.kontostand}"
puts "Neuer Kontostand Kto2 " + "#{konto2.kontostand}"
puts "------------------------------------------"
puts "Die Kontonummer lautet " + "#{konto1.kontonummer = 24143112}"
puts "Der Kontoinhaber ist " + "#{konto1.kontoinhaber = "Hans Schmidt"}"
puts "------------------------------------------"
konto1.ueberweisen(-850, konto2, konto1)
puts "Neuer Kontostand: Konto1 " + "#{konto1.kontostand}"
puts "Neuer Kontostand: Konto2 " + "#{konto2.kontostand}"