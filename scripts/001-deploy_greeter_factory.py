from brownie import accounts, GreeterFactory

def deploy_greeter_factory():
    account = accounts[0]
    greeter_factory = GreeterFactory.deploy({"from": account})
    tx = greeter_factory.createNewGreeter("Greeter one", {"from": account})
    tx.wait(1)
    print(f"Initial greeting: {greeter_factory.greetingGetter(0)}")
    greeter_factory.greetingSetter(0, "New Greeting", {"from": account})
    print(f"Set greeting: {greeter_factory.greetingGetter(0)}")
    # 2nd contract
    tx2 = greeter_factory.createNewGreeter("Greeter two", {"from": account})
    tx2.wait(1)
    print(f"Initial greeting 2: {greeter_factory.greetingGetter(1)}")
    greeter_factory.greetingSetter(0, "New Greeting 2", {"from": account})
    print(f"Set greeting: {greeter_factory.greetingGetter(1)}")
    print(f"Contracts: {greeter_factory.numberOfContracts()}")


def main():
    deploy_greeter_factory()