

def parse(original_string: str, target_key_list: list[str]) -> dict[str, str]:
    ans: dict[str, str] = {}
    cache = build_cache(original_string)
    for target in target_key_list:
        if target in cache.keys():
            ans[target] = cache[target]
    return ans



def build_cache() -> dict[str]:
    pass
# def build_cache(original_string: str) -> dict[str]:
#     cache = dict[str, str]
#     length: int = len(original_string)
#     current_key: str = ""
#     for i in range(length):
#         if i.isalpha():
#             current_key += i
#         else:
#             current_key = ""
