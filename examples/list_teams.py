import asyncio
import os
from codesphere_sdk import CodesphereClient, Team


async def main(api_token: str = ""):
    api_token = api_token or os.getenv("CS_TOKEN")

    async with CodesphereClient(api_token) as client:
        teams: list[Team] = await client.teams.teams_list_teams()
        for team in teams:
            print(f"- ID: {team.id}, Name: {team.name}")


if __name__ == "__main__":
    asyncio.run(main())
