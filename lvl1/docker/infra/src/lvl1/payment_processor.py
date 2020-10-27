import flask
import random
import time
from payment_stubs import *

app = flask.Flask(__name__)

@app.route("/process_payment")
def rand():
    """
    Where we make the big bucks.

    Accept micropayments directly from our best friends. Ahem, users.
    :return:
    """
    time.sleep(1)
    x = extract_credit_card_info()
    y = insert_money_into_account()
    return "made {} pennies\n".format(str(random.randint(0, 2**32 - 1)))

if __name__ == "__main__":
    app.run(host='0.0.0.0')
