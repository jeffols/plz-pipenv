import click
import pandas as pd

from util import greet


@click.command()
@click.option("--greetee", default="World", help="Whomever or whatever you wish to greet")
def main(greetee):
    print(greet(greetee))
    df = pd.DataFrame.from_records(greetee)
    print(df)


if __name__ == "__main__":
    main()
