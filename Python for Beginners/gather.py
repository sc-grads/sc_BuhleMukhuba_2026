import asyncio
from asyncio import Task, Future
from datetime import datetime

async def fetch_data(input_data: int) -> dict:
    print('Fetching data...')
    start_time: datetime = datetime.now()
    await asyncio.sleep(3)
    end_time: datetime = datetime.now()
    print('Data fetched...')

    return {'input' : input_data,
            'start_time' : f'{start_time: %H%M%S}',
            'end_time' :f'{end_time: %H%M%S}'}


async def main() -> None:

    tasks: Future[tuple] = asyncio.gather(
        fetch_data(1, delay=1),
        fetch_data(2, delay=2),
        fetch_data(3, delay=1)
    )

    results: tuple = await tasks
    for result in results:
        print(results)

if __name__ == '__main__':
    asyncio.run(main=main())