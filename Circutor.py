# this code reads the following parameters from Circutor CVM-C10 energy meter:
# Voltage AB, BC, CA		[62, 64, 66]
# Current A, B, C			[2, 18, 34]
# Active Power			[48]
# Apparent Power			[54]
# Energy					[222]

from pymodbus.client import ModbusSerialClient

client = ModbusSerialClient(
    port='/dev/ttyUSB0',
    baudrate=9600,
    stopbits=1,
    parity="N",
    bytesize=8,
    timeout=2
)

reg_add = [62, 64, 66, 2, 18, 34, 48, 54, 222]
unit_id = 5


for x in reg_add:
    if client.connect():
        try:
            register_address = x
            client.device_id = unit_id
            response = client.read_input_registers(
                address=register_address, count=2)
            if not response.isError():
                reg_value = client.convert_from_registers(
                    response.registers, data_type=client.DATATYPE.INT32)
                if x == 62:
                    print(f"Voltage AB: {reg_value/10}")
                if x == 64:
                    print(f"Voltage BC: {reg_value/10}")
                if x == 66:
                    print(f"Voltage CA: {reg_value/10}")
                if x == 2:
                    print(f"Current A: {reg_value/1000}")
                if x == 18:
                    print(f"Current B: {reg_value/1000}")
                if x == 34:
                    print(f"Current C: {reg_value/1000}")
                if x == 48:
                    print(f"Active Power: {reg_value/1000}")
                if x == 54:
                    print(f"Apparent Power: {reg_value/1000}")
                if x == 222:
                    print(f"Energy: {reg_value/1000}")
            else:
                print(f"Error reading register: {response}")
        finally:
            client.close()
    else:
        print("Unable to connect to the Modbus server.")
