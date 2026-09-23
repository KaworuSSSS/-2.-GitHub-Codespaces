int contador = 0;

void setup()
{
Serial.begin(9600);

Serial.println("Sistema iniciado");
}

void loop()
{
contador++;

Serial.print("Hola Mundo #");
Serial.println(contador);

delay(1000);
}