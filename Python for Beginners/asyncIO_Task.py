import asyncio
from asyncio import Task
from datetime import datetime

async def fetch_data(input_data: int, *, delay: int) -> dict:

    print('Fetching data...')

    start_time: datetime = datetime.now()
    await asyncio.sleep(3)
    end_time: datetime = datetime.now()

    print('Data fetched...')

    return {'input' : input_data,
            'start_time' : f'{start_time: %H%M%S}',
            'end_time' :f'{end_time: %H%M%S}'}


async def main() -> None:

    task: Task[dict] = asyncio.create_task(fetch_data(1, delay=3))
    await asyncio.sleep(1)
    print('Running other code....')
    data: dict = await task

    print(data)

    #cancelling task
    task: Task[dict] = asyncio.create_task(fetch_data(2, delay=10))
    await asyncio.sleep(1)
    task.cancel(msg= 'Took too long...')
    await asyncio.sleep(1)
    print(task.cancelled())

    # try-except
    try:
        data: dict = await task
        print(data)
    except asyncio.CancelledError as e:
        print('Task cancelled')
        print(e)
        print(task.cancelled())

    # grab result without waiting
    task: Task[dict] = asyncio.create_task(fetch_data(3, delay=3))
    await asyncio.sleep(1)
    try:
        data: dict = task.result()
        print(data)
    except asyncio.InvalidStateError as e:
        print(e)

    print(task.done())
    


if __name__ == '__main__':
    asyncio.run(main=main())
