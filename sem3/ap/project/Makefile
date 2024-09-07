SRC=Main.java
TARGET=Main.class
MOD_PATH=./libs/javafx-sdk-22.0.2/lib
MODS=javafx.controls

compile: $(SRC)
	javac --module-path $(MOD_PATH) --add-modules $(MODS) $(SRC) -verbose

nvim: $(SRC)
	nvim $(SRC)

run: $(TARGET)
	java --module-path $(MOD_PATH) --add-modules $(MODS) Main -verbose

clean: $(TARGET)
	rm *.class
	ls
