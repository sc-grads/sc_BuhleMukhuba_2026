from enum import Enum

class State(Enum):

    OFF = 0
    ON = 1

state: State = State.OFF

if state == State.ON:
    print('The device is turned on.')
elif state == State.OFF:
    print('The device is turned off.')
else:
    print('Unknown input...')

    