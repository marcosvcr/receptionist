from modules import Action as ac
import socket
import struct
HOST = 'localhost'              # Endereco IP do Servidor
PORT = 5000            # Porta que o Servidor esta
tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
orig = (HOST, PORT)
tcp.bind(orig)
tcp.listen(1)



myAction = ac.Action(ac.sleepAction())


eyes = ac.FollowEye().followEye


class Switcher(object):
    def indirect(self,i):
        method_name='number_'+str(i)
        method=getattr(self,method_name,lambda :'Invalid')
        return method()
    def number_0(self):
        myAction.sleep()
        myAction.takeAction()
    def number_1(self):
        myAction.followEye()
        myAction.takeAction()
    def number_2(self):
        myAction.engage()
        myAction.takeAction()
 


def getEmissionState():
    global myAction
    s=Switcher()
    packer = struct.Struct('I') 
    value = -1

    while True:
        con, cliente = tcp.accept()
        print('Concetado por', cliente)
        while True:
            action = con.recv(1024)
            s.indirect(int(action.decode('utf8')))
            follow_eye = ac.FollowEye().getFollowEye()
            if follow_eye == True:
                value = 1
            elif follow_eye == False:
                value = 0
            packed_data = packer.pack(value)


            con.sendall(packed_data)

            if not action: break
            print(cliente, action)
        print('Finalizando conexao do cliente', cliente)
        con.close()


if __name__ == "__main__":
    getEmissionState()