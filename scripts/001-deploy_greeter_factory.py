from brownie import accounts, GreeterFactory

def deploy_greeter_factory():
    account = accounts[0]
    greeter_factory = GreeterFactory.deploy({"from": account})
    tx = greeter_factory.CreateNewGreeter("Greeter one", {"from": account})
    tx.wait(1)
    print(f"Initial greeting: {greeter_factory.greetingGetter(0)}")
    greeter_factory.greetingSetter(0, "New Greeting", {"from": account})
    print(f"Set greeting: {greeter_factory.greetingGetter(0)}")


def main():
    deploy_greeter_factory()